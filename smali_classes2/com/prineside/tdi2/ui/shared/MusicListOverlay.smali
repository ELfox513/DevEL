.class public Lcom/prineside/tdi2/ui/shared/MusicListOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final f:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public final g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

.field public final j:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:B

.field public r:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 30

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0xf9

    const-string v4, "MusicListOverlay main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v2, 0x0

    iput v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->o:F

    const/4 v3, 0x0

    iput v3, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->p:I

    iput-byte v3, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const-class v5, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    iput-boolean v3, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->s:Z

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v5, 0x43a00000    # 320.0f

    const v6, 0x43ee8000    # 477.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x44200000    # 640.0f

    const v9, 0x446e8000    # 954.0f

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v7, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x2b2b2bff

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v9, 0x8

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v5, 0x446bc000    # 943.0f

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "blank"

    invoke-virtual {v5, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x44690000    # 932.0f

    invoke-virtual {v4, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v4, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v10, v9, [F

    fill-array-data v10, :array_1

    invoke-direct {v4, v5, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v10, 0x443e0000    # 760.0f

    const v11, 0x44688000    # 930.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v5, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "gradient-top"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x44680000    # 928.0f

    invoke-virtual {v5, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "gradient-bottom"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v12, 0x3e0f5c29    # 0.14f

    invoke-virtual {v5, v2, v2, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x43370000    # 183.0f

    invoke-virtual {v5, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x333333ff

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-direct {v5, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v5, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42200000    # 40.0f

    const/high16 v10, 0x43030000    # 131.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-virtual {v5, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-thumbs-up"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    new-instance v14, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    sget-object v18, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v14

    move-object v14, v5

    const/high16 v9, 0x41a00000    # 20.0f

    move-object v15, v12

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v19}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->f:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v10, 0x42c00000    # 96.0f

    invoke-virtual {v5, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x42800000    # 64.0f

    invoke-virtual {v5, v10, v10}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v12, 0x44020000    # 520.0f

    const/high16 v14, 0x42940000    # 74.0f

    invoke-virtual {v5, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v14

    invoke-direct {v12, v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    invoke-virtual {v12, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    const/high16 v5, 0x43fa0000    # 500.0f

    const/high16 v14, 0x42500000    # 52.0f

    invoke-virtual {v12, v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x429c0000    # 78.0f

    invoke-virtual {v12, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "gradient-left"

    invoke-virtual {v15, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x41980000    # 19.0f

    invoke-virtual {v12, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "gradient-right"

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v9, 0x43fa8000    # 501.0f

    invoke-virtual {v3, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v3, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-speaker"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v8, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v23

    new-instance v5, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    const/high16 v22, 0x43160000    # 150.0f

    const-wide/16 v25, 0x0

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    move-object/from16 v21, v2

    move-object/from16 v29, v5

    invoke-direct/range {v21 .. v29}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v2, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v9, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->IGNORE_MAP_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v5, v11, v13

    if-eqz v5, :cond_0

    const/16 v23, 0x1

    goto :goto_0

    :cond_0
    const/16 v23, 0x0

    :goto_0
    const/16 v24, 0x18

    const/high16 v25, 0x42000000    # 32.0f

    const/16 v26, 0x1

    new-instance v27, Lcom/prineside/tdi2/ui/shared/g1;

    invoke-direct/range {v27 .. v27}, Lcom/prineside/tdi2/ui/shared/g1;-><init>()V

    const-string v22, ""

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->j:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-times"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v18

    new-instance v3, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$3;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    sget-object v20, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v8, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v3, 0x44140000    # 592.0f

    const/high16 v4, 0x445f0000    # 892.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const-string v3, "music_list_overlay_close_button"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x41300000    # 11.0f
        0x44200000    # 640.0f
        0x0
        0x44200000    # 640.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x41300000    # 11.0f
        0x44200000    # 640.0f
        0x41300000    # 11.0f
        0x44200000    # 640.0f
        0x41300000    # 11.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x43370000    # 183.0f
        0x44200000    # 640.0f
        0x43370000    # 183.0f
        0x44200000    # 640.0f
        0x41300000    # 11.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->p()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->n(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->m()Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->s:Z

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->s:Z

    return p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->n:I

    return p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r()V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->u()V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)I
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->l()I

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/lang/Boolean;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->IGNORE_MAP_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    return-void
.end method

.method private synthetic o()V
    .locals 11

    iget-byte v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    const-string v1, "MusicListOverlay"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "another thread in progress"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-byte v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    const/4 v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_3

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/UserMap;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v5, v5, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v6, v4, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/MusicManager;->getMusicB64hash(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, v4, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->p:I

    if-eq v0, v3, :cond_c

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->p:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getMenuXmSoundTrack()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    new-instance v4, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    invoke-direct {v4, p0, v3}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;)V

    sget-object v5, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    iput-object v5, v4, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    iget-object v0, v0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iput-object v0, v4, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    const/4 v4, 0x0

    :goto_2
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/BasicLevelManager;->levelsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_8

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/BasicLevel;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/MusicManager;->getMusicB64hash(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    new-instance v7, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    invoke-direct {v7, p0, v3}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;)V

    new-instance v8, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    sget-object v9, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->BASIC_LEVEL:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    iget-object v10, v5, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;-><init>(Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;Ljava/lang/String;)V

    iput-object v8, v7, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    iput v6, v7, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    invoke-virtual {v5}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v5}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iput-object v5, v7, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UserMapManager;->userMapsOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_c

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/UserMap;

    aget-object v4, v4, v2

    iget-object v5, v4, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v5, v5, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v6, v4, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v6, v6, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getTrackBase64()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/MusicManager;->getMusicB64hash(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    new-instance v6, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    invoke-direct {v6, p0, v3}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;)V

    new-instance v7, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    sget-object v8, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->USER_MAP:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    iget-object v9, v4, Lcom/prineside/tdi2/UserMap;->id:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;-><init>(Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    iput v5, v6, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    iget-object v4, v4, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v4, v4, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iput-object v4, v6, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/i1;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/shared/i1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v2, "failed to update music list"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/i1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/i1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    :cond_0
    return-void
.end method

.method public final l()I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->n:I

    return v0
.end method

.method public final m()Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    iget v3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->n:I

    if-ne v2, v3, :cond_0

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()V
    .locals 13

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x443e0000    # 760.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v6, 0x42380000    # 46.0f

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "title"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v5, v1, v1, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "level"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v5, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v1, v1, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/16 v10, 0x10

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x43a00000    # 320.0f

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "music_list_header_menu_theme"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v5, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v1, v1, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43e60000    # 460.0f

    invoke-virtual {v5, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v6, :cond_2

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    aget-object v5, v5, v2

    iget-object v6, v5, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x42600000    # 56.0f

    if-nez v6, :cond_1

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "blank"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x252525ff

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x44200000    # 640.0f

    invoke-virtual {v7, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v6, v5, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43390000    # 185.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->u()V

    return-void
.end method

.method public postRender(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->o:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->o:F

    const p1, 0x3ea8f5c3    # 0.33f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->o:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t()V

    :cond_0
    return-void
.end method

.method public final q(Z)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "MusicListOverlay"

    if-eqz p1, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v3, v3, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/prineside/tdi2/ui/shared/h1;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/shared/h1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->t:Z

    return-void
.end method

.method public final r()V
    .locals 3

    iget-byte v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->updateUi()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "MusicListOverlay"

    const-string v1, "music list is not prepared yet"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/shared/j1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/j1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "MusicListOverlay update"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->j:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_ignore_map_music"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-byte v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q:B

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Lcom/prineside/tdi2/ui/shared/i1;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/shared/i1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->s()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->getCurrentlyPlayingMenuThemeSource()Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    sget-object v3, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->DEFAULT:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-eq v0, v3, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_4

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/MusicManager;->getCurrentlyPlayingMenuThemeSource()Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->r:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->n:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->n:I

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "loading-icon"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->q(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    return-void
.end method

.method public final t()V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/MusicManager;->getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, v1, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    instance-of v3, v2, Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    check-cast v2, Lcom/prineside/tdi2/managers/music/LiveMusicManager;

    iget-object v3, v2, Lcom/prineside/tdi2/managers/music/LiveMusicManager;->ibxm:Lcom/prineside/tdi2/ibxm/IBXM;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/prineside/tdi2/ibxm/IBXM;->getSequencePos()I

    move-result v3

    iget v6, v1, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    iget v7, v1, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    iget v8, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->l:I

    if-ne v8, v3, :cond_1

    iget v8, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->k:I

    if-ne v8, v6, :cond_1

    iget v8, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->m:I

    if-eq v8, v7, :cond_5

    :cond_1
    iput v3, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->l:I

    iput v6, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->k:I

    iput v7, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->m:I

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_4

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v12, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;

    invoke-direct {v12, v0, v2, v8}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$4;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Lcom/prineside/tdi2/managers/music/LiveMusicManager;I)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    const/high16 v13, 0x42000000    # 32.0f

    invoke-virtual {v12, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    const/high16 v14, 0x40800000    # 4.0f

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "blank"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v14, 0x40c00000    # 6.0f

    const/4 v15, 0x0

    if-ne v8, v3, :cond_2

    invoke-virtual {v12, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v12, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v12, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v5, 0x3f0f5c29    # 0.56f

    if-ne v7, v8, :cond_3

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-triangle-right-hollow"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v12, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v12, v15, v15, v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v12, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_3

    :cond_3
    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v4, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v12, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v12, v15, v15, v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v12, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {v12, v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_4
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->m()Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->f:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget v2, v2, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/MusicManager;->isMusicThumbsUp(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->f:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->f:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->f:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_4
    return-void
.end method

.method public final u()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-speaker-crossed"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-speaker"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    return-void
.end method
