.class public Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x6f

    const-string v3, "DifficultyModeOverlay main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v3, 0x44168000    # 602.0f

    const/high16 v4, 0x43960000    # 300.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const v6, 0x44968000    # 1204.0f

    const/high16 v7, 0x44160000    # 600.0f

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v5, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->c()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$1;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v4, 0x43ba0000    # 372.0f

    const/high16 v5, 0x44160000    # 600.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/16 v8, 0x8

    if-ne v6, v7, :cond_0

    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v9, -0x743cb501

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    invoke-direct {v6, v7, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v7, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-array v9, v8, [F

    fill-array-data v9, :array_1

    invoke-direct {v6, v7, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v6, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x2e7d32dd

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v9, v8, [F

    fill-array-data v9, :array_2

    invoke-direct {v6, v7, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "difficulty_mode_EASY"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x24

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v7, 0x0

    const/high16 v9, 0x43fa0000    # 500.0f

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x42c00000    # 96.0f

    invoke-virtual {v6, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "dm_no_leaderboards"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v13, 0x41f00000    # 30.0f

    const/high16 v14, 0x43c80000    # 400.0f

    invoke-virtual {v6, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v14, 0x439c0000    # 312.0f

    invoke-virtual {v6, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "dm_waves_on_demand"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v9, 0x43960000    # 300.0f

    invoke-virtual {v6, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "dm_regular_research"

    invoke-virtual {v10, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v6, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v8, 0x43480000    # 200.0f

    invoke-virtual {v6, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "dm_easy_enemies_prizes"

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v6, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v6, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "dm_no_special_loot"

    invoke-virtual {v10, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v6, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v6, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v10, v10, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$2;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v4, 0x43ba0000    # 372.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43d00000    # 416.0f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v4, v6, :cond_1

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x3a9f4ff

    invoke-direct {v6, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v10, 0x8

    new-array v5, v10, [F

    fill-array-data v5, :array_3

    invoke-direct {v4, v6, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-array v6, v10, [F

    fill-array-data v6, :array_4

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_1
    const/16 v10, 0x8

    :goto_0
    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x277bddd

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v10, [F

    fill-array-data v6, :array_5

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "difficulty_mode_NORMAL"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x24

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x43fa0000    # 500.0f

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43ba0000    # 372.0f

    invoke-virtual {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "dm_regular_leaderboards"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v5, 0x43c80000    # 400.0f

    invoke-virtual {v4, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "dm_waves_by_timer"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v4, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v5, 0x43480000    # 200.0f

    invoke-virtual {v4, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "dm_normal_enemies_prizes"

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v4, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v2, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$3;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v2, 0x44160000    # 600.0f

    const/high16 v3, 0x43ba0000    # 372.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x44500000    # 832.0f

    invoke-virtual {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v2, v3, :cond_2

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, -0x3ef801

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v5, 0x8

    new-array v8, v5, [F

    fill-array-data v8, :array_6

    invoke-direct {v2, v4, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-array v8, v5, [F

    fill-array-data v8, :array_7

    invoke-direct {v2, v4, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    :goto_1
    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v8, -0xa80e823

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v8, v5, [F

    fill-array-data v8, :array_8

    invoke-direct {v2, v4, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "difficulty_mode_ENDLESS_I"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x24

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-virtual {v2, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43ba0000    # 372.0f

    invoke-virtual {v2, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "dm_endless_leaderboards_limited"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-virtual {v2, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v4, 0x43960000    # 300.0f

    invoke-virtual {v2, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "dm_endless_researches"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v2, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "dm_endless_i_enemies_prizes"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "dm_drop_special_loot"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v2, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ProgressManager;->difficultyModeAvailable(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/16 v4, 0xaa

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_9

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v3, 0x44160000    # 600.0f

    const/high16 v4, 0x43ba0000    # 372.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-lock"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "complete_story_line_to_unlock"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        -0x3ee00000    # -10.0f
        -0x3ee00000    # -10.0f
        0x44188000    # 610.0f
        0x43bf0000    # 382.0f
        0x44188000    # 610.0f
        0x43ba0000    # 372.0f
        -0x3ee00000    # -10.0f
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        -0x3f600000    # -5.0f
        -0x3f600000    # -5.0f
        0x44174000    # 605.0f
        0x43bc8000    # 377.0f
        0x44174000    # 605.0f
        0x43b78000    # 367.0f
        -0x3f600000    # -5.0f
    .end array-data

    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x0
        0x0
        0x44160000    # 600.0f
        0x43ba0000    # 372.0f
        0x44160000    # 600.0f
        0x43b50000    # 362.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x3ee00000    # -10.0f
        -0x3ee00000    # -10.0f
        0x0
        0x44188000    # 610.0f
        0x43ba0000    # 372.0f
        0x44188000    # 610.0f
        0x43bf0000    # 382.0f
        -0x3ee00000    # -10.0f
    .end array-data

    :array_4
    .array-data 4
        -0x3f600000    # -5.0f
        -0x3f600000    # -5.0f
        0x40a00000    # 5.0f
        0x44174000    # 605.0f
        0x43b78000    # 367.0f
        0x44174000    # 605.0f
        0x43bc8000    # 377.0f
        -0x3f600000    # -5.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x41200000    # 10.0f
        0x44160000    # 600.0f
        0x43b50000    # 362.0f
        0x44160000    # 600.0f
        0x43ba0000    # 372.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x3ee00000    # -10.0f
        -0x3ee00000    # -10.0f
        0x44188000    # 610.0f
        0x43bf0000    # 382.0f
        0x44188000    # 610.0f
        0x43ba0000    # 372.0f
        -0x3ee00000    # -10.0f
    .end array-data

    :array_7
    .array-data 4
        0x40a00000    # 5.0f
        -0x3f600000    # -5.0f
        -0x3f600000    # -5.0f
        0x44174000    # 605.0f
        0x43bc8000    # 377.0f
        0x44174000    # 605.0f
        0x43b78000    # 367.0f
        -0x3f600000    # -5.0f
    .end array-data

    :array_8
    .array-data 4
        0x41200000    # 10.0f
        0x0
        0x0
        0x44160000    # 600.0f
        0x43ba0000    # 372.0f
        0x44160000    # 600.0f
        0x43b50000    # 362.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x41200000    # 10.0f
        0x0
        0x0
        0x44160000    # 600.0f
        0x43ba0000    # 372.0f
        0x44160000    # 600.0f
        0x43b50000    # 362.0f
        0x0
    .end array-data
.end method

.method public setVisible(Z)V
    .locals 5

    const-string v0, "DifficultyModeOverlay"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->c()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v3, v3, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/prineside/tdi2/ui/shared/g;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/shared/g;-><init>(Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->c:Z

    return-void
.end method
