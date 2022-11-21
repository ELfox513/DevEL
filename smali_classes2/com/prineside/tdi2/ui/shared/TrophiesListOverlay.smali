.class public Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0xd0d0d8f

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->g:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x99

    const-string v4, "TrophiesList main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const v7, 0x440bc000    # 559.0f

    invoke-virtual {v4, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const v4, 0x448bc000    # 1118.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x2f2f2fff

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v10, 0x8

    new-array v11, v10, [F

    fill-array-data v11, :array_0

    invoke-direct {v7, v8, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v8, 0x42dc0000    # 110.0f

    invoke-virtual {v7, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x43200000    # 160.0f

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, ""

    invoke-direct {v7, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x447a0000    # 1000.0f

    const/high16 v14, 0x41d00000    # 26.0f

    invoke-virtual {v7, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v7, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v15, 0xc

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v15, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v8, 0x4481c000    # 1038.0f

    invoke-virtual {v7, v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x3f800000    # 1.0f

    const v11, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v8, v8, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-direct {v7, v14, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v7, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    invoke-direct {v10, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v5

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v8, v8, v8, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const v12, 0x3f4ccccd    # 0.8f

    invoke-static {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v10

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v12

    invoke-static {v5, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v5

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v8, v8, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v7, 0x0

    const/high16 v8, -0x3d900000    # -60.0f

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x43200000    # 160.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x42dc0000    # 110.0f
        0x44848000    # 1060.0f
        0x42be0000    # 95.0f
        0x44848000    # 1060.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x41f00000    # 30.0f
        0x44848000    # 1060.0f
        0x41f00000    # 30.0f
        0x44848000    # 1060.0f
        0x41700000    # 15.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

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

    const-string v3, "TrophiesListOverlay"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

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

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v4

    neg-float v4, v4

    invoke-static {v4, v1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ui/shared/y1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/y1;-><init>(Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public show()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "trophies"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "tap_icons_for_more_info"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "tap_outside_list_to_hide"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/enums/TrophyType;->values:[Lcom/prineside/tdi2/enums/TrophyType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    new-instance v8, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v8}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    invoke-virtual {v8, v4, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->isReceived()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getIconTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->trophyManager:Lcom/prineside/tdi2/managers/TrophyManager;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/TrophyManager;->getConfig(Lcom/prineside/tdi2/enums/TrophyType;)Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/TrophyManager$TrophyConfig;->getWhiteTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const v10, 0x3e8f5c29    # 0.28f

    invoke-virtual {v9, v6, v6, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    move-object v6, v9

    :goto_1
    const/high16 v9, 0x3fa00000    # 1.25f

    invoke-virtual {v8, v6, v9, v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setIconAndCount(Lcom/badlogic/gdx/scenes/scene2d/Actor;FI)V

    new-instance v6, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay$1;

    invoke-direct {v6, p0, v7}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;Lcom/prineside/tdi2/enums/TrophyType;)V

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v8, 0x430c0000    # 140.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x8

    if-ne v4, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v4, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v3, v3, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-instance v5, Lcom/prineside/tdi2/ui/shared/x1;

    invoke-direct {v5, p0}, Lcom/prineside/tdi2/ui/shared/x1;-><init>(Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;)V

    const-string v7, "TrophiesListOverlay"

    invoke-virtual {v2, v7, v3, v5}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-static {v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v0

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v4

    const v5, 0x3e99999a    # 0.3f

    mul-float v0, v0, v5

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-static {v1, v6, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-static {v6, v1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
