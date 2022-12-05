.class public Lcom/prineside/tdi2/screens/SettingsScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;
    }
.end annotation


# static fields
.field public static final r:[I


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public e:I

.field public f:I

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public h:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

.field public i:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

.field public l:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

.field public m:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

.field public n:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

.field public o:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public q:Lcom/prineside/tdi2/ui/actors/RectButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/screens/SettingsScreen;->r:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x18
        0x1e
        0x2d
        0x30
        0x3c
        0x48
        0x5a
        0x64
        0x78
        0x80
        0x8c
        0x90
        0xf0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 37

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x64

    const-string v4, "SettingsScreen main"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v4, 0x65

    const-string v5, "SettingsScreen gradient"

    invoke-virtual {v3, v2, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v3

    iput-object v3, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v5, 0x66

    const-string v6, "SettingsScreen safezone hint"

    const/4 v7, 0x1

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-wrench"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "settings_title"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/shared/BackButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$1;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$1;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/shared/BackButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/BackButton;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "gradient-top"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x43000000    # 128.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_language"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon-locale"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/LocaleManager;->getAvailableLocales()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v6

    :goto_0
    const/4 v9, 0x0

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/high16 v11, 0x43aa0000    # 340.0f

    const/high16 v12, 0x42800000    # 64.0f

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/managers/LocaleManager$Locale;

    new-instance v13, Lcom/prineside/tdi2/screens/SettingsScreen$2;

    iget-object v14, v10, Lcom/prineside/tdi2/managers/LocaleManager$Locale;->name:Ljava/lang/String;

    invoke-direct {v13, v0, v14, v10}, Lcom/prineside/tdi2/screens/SettingsScreen$2;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;Lcom/prineside/tdi2/managers/LocaleManager$Locale;)V

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager$Locale;->alias:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v15}, Lcom/prineside/tdi2/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v15}, Lcom/prineside/tdi2/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v13, v10}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->setSelected(Z)V

    iget-object v10, v13, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x4

    if-ne v9, v11, :cond_0

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v6}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v6

    sget-object v10, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v6, v10, :cond_2

    new-instance v6, Lcom/prineside/tdi2/screens/SettingsScreen$3;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "\u7b80\u4f53\u4e2d\u6587<@icon-link-out>"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v0, v13}, Lcom/prineside/tdi2/screens/SettingsScreen$3;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->setSelected(Z)V

    iget-object v6, v6, Lcom/prineside/tdi2/screens/SettingsScreen$LocaleButton;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    add-int/2addr v9, v7

    const/4 v6, 0x4

    if-ne v9, v6, :cond_2

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_2
    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelButton;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "settings_fix_translation"

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "<@icon-link-out>"

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v13, Lcom/prineside/tdi2/screens/SettingsScreen$4;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$4;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-direct {v3, v6, v9, v13}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v6, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_audio"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon-note"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "settings_sound"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x1e

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v3, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v6, 0x441a0000    # 616.0f

    invoke-virtual {v3, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "settings_music"

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v3, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v9, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SOUND_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v16

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "%"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    invoke-direct {v9, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v13, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v21, 0x43c80000    # 400.0f

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v15, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v22

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$5;

    invoke-direct {v5, v0, v9}, Lcom/prineside/tdi2/screens/SettingsScreen$5;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v20, v13

    move-object/from16 v28, v5

    invoke-direct/range {v20 .. v28}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v13, v7}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v13, 0x43c80000    # 400.0f

    invoke-virtual {v5, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v20

    mul-double v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v13

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v9, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v25, 0x43c80000    # 400.0f

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v13, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v26

    const-wide/16 v28, 0x0

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    new-instance v6, Lcom/prineside/tdi2/screens/SettingsScreen$6;

    invoke-direct {v6, v0, v9}, Lcom/prineside/tdi2/screens/SettingsScreen$6;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v24, v4

    move-object/from16 v32, v6

    invoke-direct/range {v24 .. v32}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v13, 0x43c80000    # 400.0f

    invoke-virtual {v4, v13, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "settings_shooting_sound"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v6, 0x441a0000    # 616.0f

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v13, 0x42400000    # 48.0f

    invoke-virtual {v9, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v14, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SHOOTING_SOUNDS_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v20

    mul-double v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v26

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$7;

    invoke-direct {v5, v0, v6}, Lcom/prineside/tdi2/screens/SettingsScreen$7;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v24, v4

    move-object/from16 v32, v5

    invoke-direct/range {v24 .. v32}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    const/high16 v9, 0x43c80000    # 400.0f

    invoke-virtual {v4, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "settings_smooth_music"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SMOOTH_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmpl-double v6, v4, v14

    if-eqz v6, :cond_3

    const/16 v26, 0x1

    goto :goto_1

    :cond_3
    const/16 v26, 0x0

    :goto_1
    const/16 v27, 0x1e

    const/high16 v28, 0x42200000    # 40.0f

    const/16 v29, 0x1

    new-instance v4, Lcom/prineside/tdi2/screens/SettingsScreen$8;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$8;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v24, v3

    move-object/from16 v30, v4

    invoke-direct/range {v24 .. v30}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    if-ne v3, v10, :cond_4

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "settings_cache_music_hint"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "requires_game_restart"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6, v6, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x441a0000    # 616.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_special"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon-star"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "settings_secret_code"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v9, Lcom/prineside/tdi2/screens/SettingsScreen$9;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$9;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-direct {v3, v5, v6, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "settings_restore_purchases"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    new-instance v9, Lcom/prineside/tdi2/screens/SettingsScreen$10;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$10;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-direct {v3, v5, v6, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x441a0000    # 616.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_gameplay"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon-joystick"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "settings_instant_auto_wave_calls"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isInstantAutoWaveCallEnabled()Z

    move-result v26

    const/16 v27, 0x1e

    const/high16 v28, 0x42200000    # 40.0f

    const/16 v29, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$11;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$11;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v24, v3

    move-object/from16 v30, v5

    invoke-direct/range {v24 .. v30}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    if-ne v3, v10, :cond_6

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "settings_rmb_equals_hold_button"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->INSTANT_HOLD_BUTTON_ON_RMB:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v5

    cmpl-double v9, v5, v14

    if-eqz v9, :cond_5

    const/16 v26, 0x1

    goto :goto_2

    :cond_5
    const/16 v26, 0x0

    :goto_2
    const/16 v27, 0x1e

    const/high16 v28, 0x42200000    # 40.0f

    const/16 v29, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$12;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$12;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v24, v3

    move-object/from16 v30, v5

    invoke-direct/range {v24 .. v30}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_6
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "settings_auto_save_interval"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v13, ""

    invoke-direct {v5, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v12, 0x43d20000    # 420.0f

    invoke-virtual {v5, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v5, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v12, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATE_AUTO_SAVE_INTERVAL:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v12}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v21

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-object v12, v10

    mul-double v9, v21, v24

    double-to-int v4, v9

    new-instance v9, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v28, 0x43c80000    # 400.0f

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x403e000000000000L    # 30.0

    new-instance v10, Lcom/prineside/tdi2/screens/m0;

    invoke-direct {v10, v5}, Lcom/prineside/tdi2/screens/m0;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v27, v9

    move-object/from16 v35, v10

    invoke-direct/range {v27 .. v35}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v9, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->n:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->n:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v9, 0x43c80000    # 400.0f

    const/high16 v10, 0x42800000    # 64.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->n:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    int-to-double v14, v4

    invoke-virtual {v5, v14, v15, v7}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->n:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x43000000    # 128.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "settings_reset_progress"

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x1e

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/screens/SettingsScreen$13;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$13;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-direct {v3, v5, v9, v10}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5, v9}, Lcom/prineside/tdi2/ui/actors/LabelButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "settings_auto_save_hint"

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v3, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v3, v9, v9, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x441a0000    # 616.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v3}, Lcom/prineside/tdi2/ActionResolver;->hasNotifications()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "settings_notifications"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v10, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SEND_NOTIFICATIONS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmpl-double v16, v9, v14

    if-eqz v16, :cond_7

    const/16 v29, 0x1

    goto :goto_3

    :cond_7
    const/16 v29, 0x0

    :goto_3
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v9, Lcom/prineside/tdi2/screens/SettingsScreen$14;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$14;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v9

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x441a0000    # 616.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_8
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    if-ne v3, v12, :cond_9

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "settings_edit_hotkeys"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    new-instance v12, Lcom/prineside/tdi2/screens/SettingsScreen$15;

    invoke-direct {v12, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$15;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-direct {v3, v9, v10, v12}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x441a0000    # 616.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_9
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->supportsDisplayModeChange()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->isAvailable(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_a
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_screen"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon-screen"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v12

    invoke-direct {v3, v9, v10, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v12

    const/high16 v15, 0x41200000    # 10.0f

    add-float/2addr v12, v15

    invoke-interface {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v9, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v12

    add-float/2addr v12, v15

    invoke-interface {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v28

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v30

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v32

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x3e8f5c29    # 0.28f

    const/4 v7, 0x0

    invoke-direct {v12, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v33

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v34

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x3e8f5c29    # 0.28f

    invoke-direct {v8, v7, v7, v7, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v35

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v36

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v36}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    move-object/from16 v27, v9

    move-object/from16 v29, v10

    move-object/from16 v32, v3

    invoke-direct/range {v27 .. v32}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    iget-object v3, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    add-float/2addr v4, v15

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    iget-object v3, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v4

    add-float/2addr v4, v15

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x44aa0000    # 1360.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->supportsDisplayModeChange()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v29, 0x1

    goto :goto_4

    :cond_b
    const/16 v29, 0x0

    :goto_4
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v4, Lcom/prineside/tdi2/screens/n0;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/n0;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v28, "Full screen"

    move-object/from16 v27, v1

    move-object/from16 v33, v4

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->h:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x441a0000    # 616.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_VSYNC:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v29, 0x1

    goto :goto_5

    :cond_c
    const/16 v29, 0x0

    :goto_5
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/o0;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/o0;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v28, "Vertical synchronization"

    move-object/from16 v27, v1

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->i:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDisplayModes()[Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v1

    array-length v5, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v7, v5, :cond_e

    aget-object v10, v1, v7

    iget v10, v10, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    if-ge v8, v10, :cond_d

    move v8, v10

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    const-class v7, Lcom/prineside/tdi2/utils/IntPair;

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    array-length v7, v1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v7, :cond_14

    aget-object v12, v1, v10

    iget v14, v12, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    if-ge v14, v8, :cond_f

    goto :goto_a

    :cond_f
    iget v14, v12, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    int-to-float v14, v14

    const/high16 v15, 0x44070000    # 540.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_10

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_8
    iget v15, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v14, v15, :cond_12

    iget-object v15, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object/from16 v16, v15

    check-cast v16, [Lcom/prineside/tdi2/utils/IntPair;

    aget-object v4, v16, v14

    iget v4, v4, Lcom/prineside/tdi2/utils/IntPair;->a:I

    iget v11, v12, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    if-ne v4, v11, :cond_11

    check-cast v15, [Lcom/prineside/tdi2/utils/IntPair;

    aget-object v4, v15, v14

    iget v4, v4, Lcom/prineside/tdi2/utils/IntPair;->b:I

    iget v11, v12, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ne v4, v11, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x18

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_9
    if-nez v4, :cond_13

    new-instance v4, Lcom/prineside/tdi2/utils/IntPair;

    iget v11, v12, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v12, v12, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    invoke-direct {v4, v11, v12}, Lcom/prineside/tdi2/utils/IntPair;-><init>(II)V

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_13
    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x18

    goto :goto_7

    :cond_14
    new-instance v1, Lcom/prineside/tdi2/screens/p0;

    invoke-direct {v1}, Lcom/prineside/tdi2/screens/p0;-><init>()V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    :goto_b
    iget v7, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v7, :cond_15

    iget-object v7, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/utils/IntPair;

    aget-object v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Lcom/prineside/tdi2/utils/IntPair;->a:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/prineside/tdi2/utils/IntPair;->b:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v4

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getBestFullscreenMode(II)Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setItems(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->setSelected(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    new-instance v4, Lcom/prineside/tdi2/screens/SettingsScreen$16;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$16;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x44010000    # 516.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x441a0000    # 616.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v5, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x43d20000    # 420.0f

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v5, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FPS_LIMIT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v7

    new-instance v8, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v28, 0x43c80000    # 400.0f

    int-to-double v9, v7

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    new-instance v11, Lcom/prineside/tdi2/screens/q0;

    invoke-direct {v11, v0, v5}, Lcom/prineside/tdi2/screens/q0;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v27, v8

    move-wide/from16 v29, v9

    move-object/from16 v35, v11

    invoke-direct/range {v27 .. v35}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v8, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v5, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v5, 0x2329

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_c
    sget-object v10, Lcom/prineside/tdi2/screens/SettingsScreen;->r:[I

    array-length v11, v10

    if-ge v8, v11, :cond_17

    aget v10, v10, v8

    sub-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v5, :cond_16

    move v9, v8

    move v5, v10

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_17
    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    int-to-float v7, v9

    array-length v8, v10

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v5, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_18
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->isAvailable(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)Z

    move-result v5

    if-eqz v5, :cond_19

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v8, "Anti-aliasing"

    invoke-direct {v5, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x44160000    # 600.0f

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " samples"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x43d20000    # 420.0f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v7, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v28, 0x43c80000    # 400.0f

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v1

    int-to-double v9, v1

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x4010000000000000L    # 4.0

    new-instance v1, Lcom/prineside/tdi2/screens/r0;

    invoke-direct {v1, v0, v7, v2}, Lcom/prineside/tdi2/screens/r0;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V

    move-object/from16 v27, v8

    move-wide/from16 v29, v9

    move-object/from16 v35, v1

    invoke-direct/range {v27 .. v35}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v8, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->o:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->o:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v7, 0x42800000    # 64.0f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->o:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_19
    new-instance v1, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v7, Lcom/prineside/tdi2/screens/s0;

    invoke-direct {v7, v0, v2}, Lcom/prineside/tdi2/screens/s0;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V

    const-string v8, "Apply settings"

    invoke-direct {v1, v8, v5, v7}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v5, 0x435c0000    # 220.0f

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v7, "Game should be restarted to apply some settings"

    invoke-direct {v1, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_1a
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "settings_graphics"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon-easel"

    invoke-virtual {v0, v1, v3}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_large_fonts"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isLargeFontsEnabled()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$17;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$17;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_draw_particles"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$18;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$18;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_draw_explosions"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isExplosionsDrawing()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$19;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$19;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_draw_projectiles"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$20;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$20;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_draw_projectile_trails"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$21;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$21;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_flying_coins"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isFlyingCoinsEnabled()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$22;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$22;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_ui_animations"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$23;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$23;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_stains"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isStainsEnabled()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$24;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$24;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_slow_motion_pause"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SLOW_MOTION_PAUSE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v7, v9

    if-nez v5, :cond_1b

    const/16 v29, 0x1

    goto :goto_d

    :cond_1b
    const/16 v29, 0x0

    :goto_d
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$25;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$25;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_draw_tower_target"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DRAW_TOWER_TARGET:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v7, v9

    if-nez v5, :cond_1c

    const/16 v29, 0x1

    goto :goto_e

    :cond_1c
    const/16 v29, 0x0

    :goto_e
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$26;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$26;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_live_leaderboards"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LIVE_LEADERBOARDS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_1d

    const/16 v29, 0x1

    goto :goto_f

    :cond_1d
    const/16 v29, 0x0

    :goto_f
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$27;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$27;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_statistics_chart"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATISTICS_CHART_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_1e

    const/16 v29, 0x1

    goto :goto_10

    :cond_1e
    const/16 v29, 0x0

    :goto_10
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$28;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$28;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v3

    move-object/from16 v33, v5

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_3d_models"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isThreeDeeModelsEnabled()Z

    move-result v29

    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v27, v3

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$29;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/screens/SettingsScreen$29;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)V

    iput-object v5, v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->onToggle:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_loot_icons"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LOOT_ICONS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_1f

    const/16 v29, 0x1

    goto :goto_11

    :cond_1f
    const/16 v29, 0x0

    :goto_11
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v27, v3

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$30;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$30;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    iput-object v5, v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->onToggle:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_21

    new-instance v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_hot_key_hints"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_HOT_KEY_HINTS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_20

    const/16 v29, 0x1

    goto :goto_12

    :cond_20
    const/16 v29, 0x0

    :goto_12
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v27, v3

    invoke-direct/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$31;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$31;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    iput-object v5, v3, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->onToggle:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x441a0000    # 616.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v3, 0x0

    goto :goto_13

    :cond_21
    const/4 v3, 0x1

    :goto_13
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v5}, Lcom/prineside/tdi2/ActionResolver;->rewardAdsAvailable()Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-direct {v5}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>()V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "settings_pause_ads_icon"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v8, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->ENABLE_PAUSE_AD_ICON:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_22

    const/16 v29, 0x1

    goto :goto_14

    :cond_22
    const/16 v29, 0x0

    :goto_14
    const/16 v30, 0x1e

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x1

    new-instance v7, Lcom/prineside/tdi2/screens/SettingsScreen$32;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$32;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object/from16 v27, v5

    move-object/from16 v33, v7

    invoke-virtual/range {v27 .. v33}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setup(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x441a0000    # 616.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/4 v7, 0x1

    xor-int/2addr v3, v7

    if-eqz v3, :cond_23

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_23
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "settings_ui_safe_zone"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v5, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v5, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x43d20000    # 420.0f

    invoke-virtual {v5, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v5, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_SAFE_AREA:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v7

    new-instance v8, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v28, 0x43c80000    # 400.0f

    int-to-double v9, v7

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x405e000000000000L    # 120.0

    new-instance v7, Lcom/prineside/tdi2/screens/t0;

    invoke-direct {v7, v0, v2, v5}, Lcom/prineside/tdi2/screens/t0;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v27, v8

    move-wide/from16 v29, v9

    move-object/from16 v35, v7

    invoke-direct/range {v27 .. v35}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v8, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->l:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->l:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v7, 0x42800000    # 64.0f

    invoke-virtual {v5, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->l:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v4, v9, v10, v2}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->l:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x441a0000    # 616.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x43000000    # 128.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "settings_ui_scale"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v3, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x43d20000    # 420.0f

    invoke-virtual {v3, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_SCALE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v6

    new-instance v8, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v27, 0x43c80000    # 400.0f

    const-wide v30, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    new-instance v9, Lcom/prineside/tdi2/screens/u0;

    invoke-direct {v9, v3}, Lcom/prineside/tdi2/screens/u0;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    move-object/from16 v26, v8

    move-wide/from16 v28, v6

    move-object/from16 v34, v9

    invoke-direct/range {v26 .. v34}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    iput-object v8, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->m:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->m:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v4, 0x43c80000    # 400.0f

    const/high16 v9, 0x42800000    # 64.0f

    invoke-virtual {v8, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->m:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v4, v6, v7, v3}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->m:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x441a0000    # 616.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "settings_development"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "icon-tools"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/screens/SettingsScreen;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_debug_mode"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugMode()Z

    move-result v8

    const/16 v9, 0x1e

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v11, 0x1

    new-instance v12, Lcom/prineside/tdi2/screens/SettingsScreen$33;

    invoke-direct {v12, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$33;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x441a0000    # 616.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_debug_detailed_mode"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->isInDebugDetailedMode()Z

    move-result v9

    const/16 v10, 0x1e

    const/high16 v11, 0x42200000    # 40.0f

    const/4 v12, 0x1

    new-instance v13, Lcom/prineside/tdi2/screens/SettingsScreen$34;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$34;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x441a0000    # 616.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_SHOW_FPS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_24

    const/4 v8, 0x1

    goto :goto_15

    :cond_24
    const/4 v8, 0x0

    :goto_15
    const/16 v9, 0x1e

    const/high16 v10, 0x42200000    # 40.0f

    const/4 v11, 0x1

    new-instance v12, Lcom/prineside/tdi2/screens/SettingsScreen$35;

    invoke-direct {v12, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$35;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v7, "FPS"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x441a0000    # 616.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v7, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_SYNC_VALIDATION:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_25

    const/4 v9, 0x1

    goto :goto_16

    :cond_25
    const/4 v9, 0x0

    :goto_16
    const/16 v10, 0x1e

    const/high16 v11, 0x42200000    # 40.0f

    const/4 v12, 0x1

    new-instance v13, Lcom/prineside/tdi2/screens/SettingsScreen$36;

    invoke-direct {v13, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$36;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v8, "Desync check"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x441a0000    # 616.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "settings_debug_bug_reports"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->isBugReportsEnabled()Z

    move-result v7

    const/16 v8, 0x1e

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v10, 0x1

    new-instance v11, Lcom/prineside/tdi2/screens/SettingsScreen$37;

    invoke-direct {v11, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$37;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x441a0000    # 616.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$39;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$39;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v6, "Send logs"

    invoke-direct {v2, v6, v4, v5}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x441a0000    # 616.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$40;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$40;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v6, "Replay"

    invoke-direct {v2, v6, v3, v5}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x441a0000    # 616.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/SettingsScreen$41;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/screens/SettingsScreen$41;-><init>(Lcom/prineside/tdi2/screens/SettingsScreen;)V

    const-string v6, "Device info"

    invoke-direct {v2, v6, v4, v5}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x441a0000    # 616.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/SettingsScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43100000    # 144.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/SettingsScreen;->r(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/screens/SettingsScreen;->s(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic c(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->n(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->p(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->v(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->t(Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/utils/IntPair;Lcom/prineside/tdi2/utils/IntPair;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->q(Lcom/prineside/tdi2/utils/IntPair;Lcom/prineside/tdi2/utils/IntPair;)I

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->o(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/screens/SettingsScreen;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/screens/SettingsScreen;->u(Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/screens/SettingsScreen;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/SettingsScreen;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/screens/SettingsScreen;)Lcom/prineside/tdi2/ui/actors/RectButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/screens/SettingsScreen;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->e:I

    return p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/screens/SettingsScreen;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->e:I

    return v0
.end method

.method public static synthetic n(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->STATE_AUTO_SAVE_INTERVAL:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    int-to-float v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "never"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, p1, 0x2

    const-string v1, "TIME_CHAR_MINUTE"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " 30"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "TIME_CHAR_SECOND"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic o(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method

.method private synthetic p(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/utils/IntPair;Lcom/prineside/tdi2/utils/IntPair;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/utils/IntPair;->a:I

    iget p1, p1, Lcom/prineside/tdi2/utils/IntPair;->a:I

    invoke-static {p0, p1}, Lx1/i;->a(II)I

    move-result p0

    return p0
.end method

.method private synthetic r(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 3

    iget-object p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->getValue()D

    move-result-wide v0

    double-to-float p2, v0

    sget-object v0, Lcom/prineside/tdi2/screens/SettingsScreen;->r:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float p2, p2, v1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p2

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_0
    aget p2, v0, p2

    if-nez p2, :cond_1

    const-string p2, "No FPS limit"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " FPS"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic s(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Ljava/lang/Double;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float p3, v2

    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " samples"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result p1

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic t(Lcom/prineside/tdi2/ActionResolver$InitConfigManager;)V
    .locals 5

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->supportsDisplayModeChange()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->i:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Graphics;->setVSync(Z)V

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_VSYNC:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->i:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->i:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->k:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->getValue()D

    move-result-wide v2

    double-to-float v0, v2

    sget-object v2, Lcom/prineside/tdi2/screens/SettingsScreen;->r:[I

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v0, v0, v3

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    aget v0, v2, v0

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FPS_LIMIT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-virtual {p1, v2, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    :cond_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2, v0}, Lcom/prineside/tdi2/ActionResolver;->setFpsLimit(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v3, v2}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v2, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SettingsScreen"

    invoke-static {v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->h:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_WIDTH:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v0

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_HEIGHT:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v2}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getBestFullscreenMode(II)Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Graphics;->setFullscreenMode(Lcom/badlogic/gdx/Graphics$DisplayMode;)Z

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v0, v4}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Graphics;->setWindowedMode(II)Z

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_FS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_AA_LEVELS:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->isAvailable(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->o:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->getValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v3

    if-eq v3, v2, :cond_5

    invoke-virtual {p1, v0, v2}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->q:Lcom/prineside/tdi2/ui/actors/RectButton;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void
.end method

.method private synthetic u(Lcom/prineside/tdi2/ActionResolver$InitConfigManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result p3

    invoke-static {p3}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p3

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_SAFE_AREA:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {p1, v0, p3}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->set(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;I)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    int-to-float v5, p3

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object p1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    if-nez p3, :cond_0

    const-string p1, "Full screen"

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "px"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static synthetic v(Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Ljava/lang/Double;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_SCALE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p1, v2, v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

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

.method public show()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Screen;->show()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 12

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget v1, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->f:I

    rem-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v4, 0x8

    const v5, 0x3e8f5c29    # 0.28f

    const/4 v6, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v7, v4, [F

    fill-array-data v7, :array_0

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v1, v7, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget v7, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->f:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x44aa0000    # 1360.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {v8, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {p2, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x24

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {p2, p1, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->f:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    new-instance p2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v6, v6, v6, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {p2, v1, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_2
    iget p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/prineside/tdi2/screens/SettingsScreen;->f:I

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
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
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/LocaleManager;->setLocale(Ljava/lang/String;Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToSettingsScreen()V

    return-void
.end method
