.class public Lcom/prineside/tdi2/screens/StatisticsScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;
    }
.end annotation


# static fields
.field public static final n:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public c:Lcom/prineside/tdi2/ui/actors/RectButton;

.field public d:Lcom/prineside/tdi2/ui/actors/RectButton;

.field public e:Lcom/prineside/tdi2/ui/actors/RectButton;

.field public f:Lcom/prineside/tdi2/ui/actors/RectButton;

.field public g:Lcom/prineside/tdi2/ui/actors/RectButton;

.field public h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public j:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

.field public k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public m:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->n:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x64

    const-string v4, "StatisticsScreen main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;->ALL_TIME:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    iput-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->j:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-statistics"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "statistics_title"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ui/shared/BackButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/screens/StatisticsScreen$1;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$1;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/shared/BackButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/BackButton;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "blank"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x0

    const v7, 0x3e8f5c29    # 0.28f

    invoke-direct {v3, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->m:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x43200000    # 160.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v10, 0x43a00000    # 320.0f

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "statistics_subtitle_all_time"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v13, Lcom/prineside/tdi2/screens/StatisticsScreen$2;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$2;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-direct {v3, v11, v12, v13}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/high16 v11, 0x42800000    # 64.0f

    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v13, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v15, 0x8

    new-array v14, v15, [F

    fill-array-data v14, :array_0

    invoke-direct {v3, v14, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v13, v3}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/high16 v16, 0x43a00000    # 320.0f

    const/high16 v17, 0x42800000    # 64.0f

    const/16 v9, 0x8

    move v15, v3

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x3d8f5c29    # 0.07f

    invoke-direct {v13, v6, v6, v6, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    const v14, 0x3e0f5c29    # 0.14f

    invoke-direct {v15, v8, v8, v8, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v12, v13, v15, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v8, v8, v8, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "statistics_subtitle_by_game"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v13, v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v15, Lcom/prineside/tdi2/screens/StatisticsScreen$3;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$3;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-direct {v3, v12, v13, v15}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v12, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v15, v9, [F

    fill-array-data v15, :array_1

    invoke-direct {v13, v15, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v12, v13}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x43a00000    # 320.0f

    const/high16 v23, 0x42800000    # 64.0f

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x3d8f5c29    # 0.07f

    invoke-direct {v13, v6, v6, v6, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v15, v9, v9, v9, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v12, v13, v15, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v8, v8, v8, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "statistics_subtitle_max_per_game"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v13, v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v15, Lcom/prineside/tdi2/screens/StatisticsScreen$4;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$4;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-direct {v3, v12, v13, v15}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v12, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v15, 0x8

    new-array v10, v15, [F

    fill-array-data v10, :array_2

    invoke-direct {v13, v10, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v12, v13}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v22, 0x0

    const/high16 v23, 0x43a00000    # 320.0f

    const/high16 v24, 0x42800000    # 64.0f

    move-object/from16 v19, v3

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3d8f5c29    # 0.07f

    invoke-direct {v12, v6, v6, v6, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v13, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v10, v12, v13, v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v8, v8, v8, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "statistics_subtitle_achievements"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v13, Lcom/prineside/tdi2/screens/StatisticsScreen$5;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$5;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-direct {v3, v10, v12, v13}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/high16 v10, 0x43a00000    # 320.0f

    invoke-virtual {v3, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v10, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v12, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v13, 0x8

    new-array v15, v13, [F

    fill-array-data v15, :array_3

    invoke-direct {v12, v15, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v12}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    move-object/from16 v19, v3

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x3d8f5c29    # 0.07f

    invoke-direct {v12, v6, v6, v6, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v13, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v13, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v10, v12, v13, v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v8, v8, v8, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "count-bubble"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v10, 0x42010000    # 32.25f

    const/high16 v12, 0x42130000    # 36.75f

    invoke-virtual {v3, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v10, 0x438ae000    # 277.75f

    const/high16 v12, 0x41300000    # 11.0f

    invoke-virtual {v3, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AchievementManager;->countAchievementsToRedeem()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_0
    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    iget-object v10, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "statistics_subtitle_earned_items"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    invoke-direct {v12, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v4, Lcom/prineside/tdi2/screens/StatisticsScreen$6;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$6;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-direct {v3, v10, v12, v4}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->g:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-virtual {v3, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->g:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v11, 0x8

    new-array v11, v11, [F

    fill-array-data v11, :array_4

    invoke-direct {v10, v11, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v10}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x43a00000    # 320.0f

    const/high16 v24, 0x42800000    # 64.0f

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v24}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->g:Lcom/prineside/tdi2/ui/actors/RectButton;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x3d8f5c29    # 0.07f

    invoke-direct {v10, v6, v6, v6, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v12, v12, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v3, v4, v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->g:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v8, v8, v8, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->g:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x43200000    # 160.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->s()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->o()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->p()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/screens/StatisticsScreen;->q()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->r(Lcom/prineside/tdi2/enums/AchievementType;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;)Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->j:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    return-object p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->s()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/StatisticsScreen;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    return-object p1
.end method

.method private synthetic o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->startReplay(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatisticsScreen"

    const-string v2, "parsing failed"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/StatisticsScreen$11;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/StatisticsScreen$11;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->startReplay(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatisticsScreen"

    const-string v2, "parsing failed"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/screens/StatisticsScreen$12;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/StatisticsScreen$12;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic q()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AchievementManager;->syncAchievementsWithPlatform()V

    return-void
.end method

.method private synthetic r(Lcom/prineside/tdi2/enums/AchievementType;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/AchievementManager;->redeem(Lcom/prineside/tdi2/enums/AchievementType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AchievementManager;->countAchievementsToRedeem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->s()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public draw(F)V
    .locals 4

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "menu_background"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    :cond_0
    return-void
.end method

.method public final i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getStatisticsTitle(Lcom/prineside/tdi2/enums/StatisticsType;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result p2

    float-to-long p2, p2

    invoke-static {p2, p3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->j(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->m:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen;->n:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v2, 0x20

    if-le p2, v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string p2, "..."

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {p2, p3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42800000    # 64.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public final k(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getStatisticsTitle(Lcom/prineside/tdi2/enums/StatisticsType;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->j(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    const/high16 v9, 0x41800000    # 16.0f

    const/4 v10, 0x0

    if-ge v8, v6, :cond_1

    aget-object v11, v5, v8

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/TowerManager;->getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v2, v12, v10}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v12

    cmpl-float v10, v12, v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "blank"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Tower$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v10, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Tower$Factory;->getTitle()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/high16 v6, 0x42800000    # 64.0f

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_3
    if-eqz v5, :cond_4

    const/high16 v8, 0x43700000    # 240.0f

    goto :goto_3

    :cond_4
    const/high16 v8, 0x43a80000    # 336.0f

    :goto_3
    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-object v1, v5

    :goto_4
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "statistics_TB"

    invoke-virtual {v5, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v11, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v4, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x3f800000    # 1.0f

    const v11, 0x3f0f5c29    # 0.56f

    invoke-virtual {v4, v5, v5, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v12, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v13, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v14, v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v15, v14, :cond_7

    aget-object v7, v13, v15

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getBuiltStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v9

    float-to-double v5, v9

    const-wide/16 v17, 0x0

    cmpg-double v19, v5, v17

    if-gtz v19, :cond_6

    goto :goto_6

    :cond_6
    add-float v16, v16, v9

    new-instance v5, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tower$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-direct {v5, v6, v9, v10}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v15, v15, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v9, 0x41800000    # 16.0f

    goto :goto_5

    :cond_7
    const/high16 v5, 0x42c80000    # 100.0f

    const v6, 0x3e8f5c29    # 0.28f

    cmpl-float v7, v16, v10

    if-nez v7, :cond_8

    new-instance v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v10, v10, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v7, v9, v5, v10}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v4, v12}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "damage_by_tower"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v4, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v7, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x42800000    # 64.0f

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v7, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v9, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v11, v9, :cond_a

    aget-object v13, v3, v11

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/TowerManager;->getDamageDealtStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-virtual {v2, v14, v10}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v14

    cmpg-float v15, v14, v10

    if-gtz v15, :cond_9

    goto :goto_8

    :cond_9
    add-float/2addr v12, v14

    new-instance v15, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v5, v13}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tower$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-direct {v15, v5, v14, v10}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    goto :goto_7

    :cond_a
    cmpl-float v2, v12, v10

    if-nez v2, :cond_b

    new-instance v2, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v10, v10, v10, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-direct {v2, v3, v5, v10}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public final m(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->CG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->EP:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->GPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->WD:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->SG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG_S:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->VECTOR:Lcom/prineside/tdi2/enums/MinerType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG_V:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->MATRIX:Lcom/prineside/tdi2/enums/MinerType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG_M:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG_T:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->INFIAR:Lcom/prineside/tdi2/enums/MinerType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->RG_I:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->TB:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->TS:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->TU:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->TMS:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->TDD:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->GS:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->k(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->k(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->WC:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->WCST:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->k(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    sget-object v0, Lcom/prineside/tdi2/enums/StatisticsType;->WCGC:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->i(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/prineside/tdi2/enums/StatisticsType;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-void
.end method

.method public final n(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "towers"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "built"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x42fa0000    # 125.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "statistics_money_spent"

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v3, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v11, 0x43480000    # 200.0f

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "damage"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v13, 0x432f0000    # 175.0f

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "kills"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v3, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v4, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    aget-object v10, v3, v8

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v12, v10}, Lcom/prineside/tdi2/managers/TowerManager;->getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v14

    cmpl-float v14, v14, v15

    if-nez v14, :cond_0

    const/4 v10, 0x0

    const/high16 v12, 0x432f0000    # 175.0f

    goto/16 :goto_1

    :cond_0
    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v14, v10}, Lcom/prineside/tdi2/managers/TowerManager;->getBuiltStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v14

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/managers/TowerManager;->getDamageDealtStatisticType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v13

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v11, v10}, Lcom/prineside/tdi2/managers/TowerManager;->getEnemiesKilledStatisticsType(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v11

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->m:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/4 v15, 0x5

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v5, v10}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v5

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/Tower$Factory;->createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tower$Factory;->getTitle()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v15, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v10, v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v10

    float-to-double v14, v10

    const/4 v10, 0x0

    invoke-static {v14, v15, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v5, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v14, 0x42fa0000    # 125.0f

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v12

    float-to-double v14, v12

    invoke-static {v14, v15, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    iget-object v14, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v5, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v12, 0x43480000    # 200.0f

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v13

    float-to-double v12, v13

    invoke-static {v12, v13, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v5, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v12, 0x432f0000    # 175.0f

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-virtual {v2, v11, v14}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v11

    float-to-double v13, v11

    invoke-static {v13, v14, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    iget-object v13, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v5, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x42fa0000    # 125.0f

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    const/high16 v11, 0x43480000    # 200.0f

    const/high16 v13, 0x432f0000    # 175.0f

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public resize(II)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/StatisticsScreen;->s()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->g:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/screens/StatisticsScreen$13;->a:[I

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->j:Lcom/prineside/tdi2/screens/StatisticsScreen$MainTabType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/high16 v5, 0x44160000    # 600.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v1, v2, :cond_13

    const-string v9, "[]"

    const/16 v10, 0x1e

    const-string v12, "blank"

    const v13, 0x3f0f5c29    # 0.56f

    const/high16 v14, 0x42800000    # 64.0f

    const/16 v15, 0x18

    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v1, v6, :cond_c

    const/4 v6, 0x3

    if-eq v1, v6, :cond_a

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->f:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v8, v1, v6

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v11, v11, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "achievements"

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [#8BC34A]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "achievements_screen_hint"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v4, v4, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "do_synchronize"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v8, Lcom/prineside/tdi2/screens/z0;

    invoke-direct {v8}, Lcom/prineside/tdi2/screens/z0;-><init>()V

    invoke-direct {v2, v5, v6, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-restart"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x43000000    # 128.0f

    const/high16 v19, 0x41000000    # 8.0f

    const/high16 v20, 0x42400000    # 48.0f

    const/high16 v21, 0x42400000    # 48.0f

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x42f00000    # 120.0f

    const/high16 v20, 0x42800000    # 64.0f

    const/16 v21, 0x10

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5, v6, v8, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x43400000    # 192.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e8f5c29    # 0.28f

    const/4 v8, 0x0

    invoke-direct {v2, v8, v8, v8, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v4, v4, v4, v6}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e0f5c29    # 0.14f

    invoke-direct {v5, v4, v4, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sget-object v6, Lcom/prineside/tdi2/enums/AchievementType;->values:[Lcom/prineside/tdi2/enums/AchievementType;

    array-length v8, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_15

    aget-object v10, v6, v9

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v12, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_2
    new-instance v12, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    new-instance v4, Lcom/prineside/tdi2/screens/a1;

    invoke-direct {v4, v0, v10}, Lcom/prineside/tdi2/screens/a1;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/enums/AchievementType;)V

    const-string v13, ""

    invoke-direct {v12, v13, v14, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v4, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v3, 0x8

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-direct {v13, v14, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v4, v13}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x42b40000    # 90.0f

    const/high16 v21, 0x42a00000    # 80.0f

    move-object/from16 v16, v12

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v3, v4, v13, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-gift"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x41a00000    # 20.0f

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x42400000    # 48.0f

    const/high16 v21, 0x42400000    # 48.0f

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v3, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AchievementManager;->redeemed:[Z

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_5

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-check"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x41a00000    # 20.0f

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x42400000    # 48.0f

    const/high16 v21, 0x42400000    # 48.0f

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_5
    :goto_3
    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-virtual {v3, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->getName(Lcom/prineside/tdi2/enums/AchievementType;)Ljava/lang/CharSequence;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v13, 0x41c80000    # 25.0f

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    const-string v14, "?????"

    invoke-direct {v4, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->isRequirementMet(Lcom/prineside/tdi2/enums/AchievementType;)Z

    move-result v13

    if-nez v13, :cond_7

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v13, v13, v14

    iget-boolean v13, v13, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->hidden:Z

    if-nez v13, :cond_8

    :cond_7
    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->getDescription(Lcom/prineside/tdi2/enums/AchievementType;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v13, 0x3f0f5c29    # 0.56f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v4, v14, v14, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v13, 0x41700000    # 15.0f

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->required:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/managers/AchievementManager;->getCurrentProgress(Lcom/prineside/tdi2/enums/AchievementType;)I

    move-result v13

    int-to-long v13, v13

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/AchievementManager;->configs:[Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v10, v13, v10

    iget v10, v10, Lcom/prineside/tdi2/managers/AchievementManager$AchievementConfig;->required:I

    int-to-long v13, v10

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v3, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v10, 0x10

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v10, 0x43480000    # 200.0f

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_4

    :cond_9
    const/high16 v10, 0x43480000    # 200.0f

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_4
    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v9, v9, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v13, 0x3f0f5c29    # 0.56f

    goto/16 :goto_1

    :cond_a
    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->e:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v1, Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_b

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->getMaxOneGame(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v8

    double-to-float v4, v8

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->m(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->l(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/screens/StatisticsScreen;->n(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    goto/16 :goto_a

    :cond_c
    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->d:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x41800000    # 16.0f

    if-nez v1, :cond_10

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ReplayManager;->getAllRecordIds()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v4, :cond_d

    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "no_replays_found"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto/16 :goto_a

    :cond_d
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v5, 0x0

    :goto_6
    iget v6, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_e

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    new-instance v1, Lcom/prineside/tdi2/screens/StatisticsScreen$7;

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$7;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_7
    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_15

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v7, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->m:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v7, Lcom/prineside/tdi2/screens/StatisticsScreen;->n:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v8, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v8}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v8

    const-string v10, " "

    if-eqz v8, :cond_f

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "level"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_8

    :cond_f
    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "custom_map"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_8
    const-string v8, ", "

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "defeated"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "waves"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v8, " [#888888FF]- "

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v11, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyName(Lcom/prineside/tdi2/enums/DifficultyMode;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v8, Lcom/prineside/tdi2/ui/actors/LabelButton;

    iget-object v10, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v11, Lcom/prineside/tdi2/screens/StatisticsScreen$8;

    invoke-direct {v11, v0, v5}, Lcom/prineside/tdi2/screens/StatisticsScreen$8;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-direct {v8, v7, v10, v11}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v7, Ljava/util/Date;

    iget-wide v10, v5, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v5, v10, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v8, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v5, 0x10

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v7, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_10
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "back_to_replays_list"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v7, Lcom/prineside/tdi2/screens/StatisticsScreen$9;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$9;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-direct {v2, v4, v6, v7}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x43800000    # 256.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v6, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/screens/StatisticsScreen$10;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/StatisticsScreen$10;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-boolean v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->hasState:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v2, Lcom/prineside/tdi2/screens/x0;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/screens/x0;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    :cond_11
    new-instance v4, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v6, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v7, Lcom/prineside/tdi2/screens/y0;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/screens/y0;-><init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V

    const-string v8, "Replay"

    invoke-direct {v4, v8, v6, v7, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x43480000    # 200.0f

    const/high16 v11, 0x42800000    # 64.0f

    move-object v6, v4

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v7, 0x0

    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v10, 0x42800000    # 64.0f

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_12
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->m(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->l(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->k:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->statistics:Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/screens/StatisticsScreen;->n(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    goto/16 :goto_a

    :cond_13
    iget-object v1, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->c:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/utils/IntFloatMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v5, :cond_14

    aget-object v2, v4, v7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v8

    double-to-float v2, v8

    invoke-virtual {v3, v6, v2}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/StatisticsScreen;->m(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/StatisticsScreen;->l(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/StatisticsScreen;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/StatisticsScreen;->n(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/utils/IntFloatMap;)V

    :cond_15
    :goto_a
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42a00000    # 80.0f
        0x42a00000    # 80.0f
        0x0
    .end array-data
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Screen;->show()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    return-void
.end method
