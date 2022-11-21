.class public Lcom/prineside/tdi2/screens/HotkeyScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# static fields
.field public static final j:[I


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public h:Lcom/badlogic/gdx/utils/IntArray;

.field public i:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/tdi2/screens/HotkeyScreen;->j:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    return-void

    :array_0
    .array-data 4
        0x81
        0x82
        0x3b
        0x3c
        0x39
        0x3a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x64

    const-string v3, "HotkeyScreen main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v3, 0x65

    const-string v4, "HotkeyScreen gradient"

    invoke-virtual {v2, v1, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v4, 0x66

    const-string v5, "HotkeyScreen hotkey tint"

    invoke-virtual {v3, v1, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v5, 0x67

    const-string v6, "HotkeyScreen hotkey"

    invoke-virtual {v4, v1, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v4, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->h:Lcom/badlogic/gdx/utils/IntArray;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->i:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "icon-wrench"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "hotkey_editor_title"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ui/shared/BackButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/k;

    invoke-direct {v5, p0}, Lcom/prineside/tdi2/screens/k;-><init>(Lcom/prineside/tdi2/screens/HotkeyScreen;)V

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/shared/BackButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/BackButton;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "gradient-top"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "blank"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v4, 0x3f47ae14    # 0.78f

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v2}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v3, "ABC"

    invoke-direct {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->n()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/HotkeyScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->i(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/HotkeyScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->h()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->j(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/HotkeyScreen;)Lcom/badlogic/gdx/utils/IntArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->h:Lcom/badlogic/gdx/utils/IntArray;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->k(Lcom/badlogic/gdx/utils/IntArray;)V

    return-void
.end method

.method private synthetic h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->m(Z)V

    return-void
.end method

.method private synthetic i(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/HotkeyScreen;->l(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V

    return-void
.end method

.method private synthetic j(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDefaultHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;[I)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->n()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

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

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->g()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->i:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToSettingsScreen()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->m(Z)V

    :goto_0
    return-void
.end method

.method public final k(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const-string v4, " + "

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/prineside/tdi2/screens/HotkeyScreen;->j:[I

    iget-object v5, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v5, v5, v2

    invoke-static {v3, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    iget-object v3, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/Input$Keys;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "L-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v1, v2, :cond_6

    sget-object v2, Lcom/prineside/tdi2/screens/HotkeyScreen;->j:[I

    iget-object v3, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v1

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_5

    iget v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v2, :cond_4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_4
    iget-object v2, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/badlogic/gdx/Input$Keys;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->h:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>([I)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->k(Lcom/badlogic/gdx/utils/IntArray;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->i:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    new-instance p1, Lcom/badlogic/gdx/InputMultiplexer;

    invoke-direct {p1}, Lcom/badlogic/gdx/InputMultiplexer;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/screens/HotkeyScreen$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/HotkeyScreen$1;-><init>(Lcom/prineside/tdi2/screens/HotkeyScreen;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->forwardButton:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    move-result-object p1

    new-instance v0, Lcom/prineside/tdi2/screens/n;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/n;-><init>(Lcom/prineside/tdi2/screens/HotkeyScreen;)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    return-void
.end method

.method public final m(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->h:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->i:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/SettingsManager;->setHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;[I)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->c:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->i:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->forwardButton:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/HotkeyScreen;->n()V

    return-void
.end method

.method public final n()V
    .locals 14

    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->values:[Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotkeyGroupTitle(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v6, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v4, v4, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v6, 0x44480000    # 800.0f

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "blank"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v6, 0x3e570a3d    # 0.21f

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKeyName(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v6, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x43480000    # 200.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v8

    const/4 v10, 0x0

    :goto_1
    array-length v12, v8

    if-ge v10, v12, :cond_3

    if-eqz v10, :cond_1

    const-string v12, " + "

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    aget v12, v8, v10

    invoke-static {v12}, Lcom/badlogic/gdx/Input$Keys;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "L-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_2
    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    new-instance v8, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    new-instance v12, Lcom/prineside/tdi2/screens/l;

    invoke-direct {v12, p0, v5}, Lcom/prineside/tdi2/screens/l;-><init>(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V

    invoke-direct {v8, v6, v10, v12}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/high16 v6, 0x43400000    # 192.0f

    invoke-virtual {v8, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x43ce0000    # 412.0f

    invoke-virtual {v8, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/prineside/tdi2/ui/actors/RectButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "reset"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    new-instance v12, Lcom/prineside/tdi2/screens/m;

    invoke-direct {v12, p0, v5}, Lcom/prineside/tdi2/screens/m;-><init>(Lcom/prineside/tdi2/screens/HotkeyScreen;Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)V

    invoke-direct {v8, v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/RectButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x44180000    # 608.0f

    invoke-virtual {v8, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isDefaultHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v8, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/screens/HotkeyScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    return-void
.end method
