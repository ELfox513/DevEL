.class public Lcom/prineside/tdi2/screens/LevelSelectScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;,
        Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;,
        Lcom/prineside/tdi2/screens/LevelSelectScreen$StageHeader;
    }
.end annotation


# static fields
.field public static final o:Lcom/badlogic/gdx/graphics/Color;

.field public static final p:Lcom/badlogic/gdx/graphics/Color;

.field public static final q:Lcom/badlogic/gdx/graphics/Color;

.field public static final r:Lcom/badlogic/gdx/graphics/Color;

.field public static final s:Lcom/badlogic/gdx/graphics/Color;

.field public static final t:Lcom/badlogic/gdx/graphics/Color;

.field public static final u:Lcom/badlogic/gdx/graphics/Color;

.field public static final v:Lcom/badlogic/gdx/graphics/Color;

.field public static final w:Lcom/badlogic/gdx/graphics/Color;

.field public static final x:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public g:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

.field public i:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public final k:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final l:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final m:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final n:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->p:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->q:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->r:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->s:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->t:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->u:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->v:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->w:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P600:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->y:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->i:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x64

    const-string v3, "LevelSelectScreen main"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->k:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v3, 0x65

    const-string v5, "LevelSelectScreen scroll gradients"

    invoke-virtual {v2, v1, v3, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->l:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v5, 0x67

    const-string v6, "LevelSelectScreen level menu overlay"

    invoke-virtual {v3, v1, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->m:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->n:Lcom/prineside/tdi2/utils/ObjectRetriever;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager;->hideAllComponents()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "level_select_title"

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-joystick"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/shared/BackButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v1

    new-instance v5, Lcom/prineside/tdi2/screens/LevelSelectScreen$2;

    invoke-direct {v5, p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$2;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/shared/BackButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/BackButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "particles/dust-n-sparks-bg.prt"

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "particle-triangle"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v7, 0x8

    invoke-direct {v6, v1, v5, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v6, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3e8f5c29    # 0.28f

    invoke-direct {v10, v11, v11, v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v1, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    invoke-direct {v1, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v6, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "gradient-top"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v1, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43000000    # 128.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-direct {v0, p0, v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->checkSpecialTrophiesGiven()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->showNewlyIssuedPrizesPopup()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;-><init>()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->i:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->x()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    return-object p0
.end method

.method public static synthetic d()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->x:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic e()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->y:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic f()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->w:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic g()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->u:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic h()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->v:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic i()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->t:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic j()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->p:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic k()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->q:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic l()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->r:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic m()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->s:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic n()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->m:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    return-object p0
.end method

.method public static synthetic p(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->y()V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->j:Z

    return p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->w()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method

.method public static synthetic t(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method

.method public static synthetic v(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->j:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->k:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->l:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->m:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->leaderBoardManager:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->n:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->removeBasicLevelsTopLeaderboardsRetriever(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->dispose()V

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

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->x()Z

    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Screen;->resize(II)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->y()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/Screen;->show()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->w()V

    return-void
.end method

.method public final w()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    return-void
.end method

.method public final x()Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->hide()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->h(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->h:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-static {v0, v1, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    const/4 v0, 0x1

    return v0
.end method

.method public final y()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->i:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollY()F

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager;->getRegularLayerWidth()F

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    iget-object v5, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->k:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/high16 v10, 0x43a00000    # 320.0f

    add-float v11, v8, v10

    const/high16 v12, 0x42a00000    # 80.0f

    sub-float v12, v2, v12

    const/high16 v13, 0x43aa0000    # 340.0f

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-float/2addr v8, v13

    goto :goto_0

    :cond_0
    int-to-float v8, v9

    mul-float v8, v8, v10

    const/high16 v11, 0x41a00000    # 20.0f

    add-int/lit8 v12, v9, -0x1

    int-to-float v12, v12

    mul-float v12, v12, v11

    add-float/2addr v8, v12

    sub-float/2addr v2, v8

    div-float/2addr v2, v4

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    const/4 v11, 0x0

    const/high16 v12, 0x43000000    # 128.0f

    :goto_1
    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/BasicLevelManager;->stagesOrdered:Lcom/badlogic/gdx/utils/Array;

    iget v15, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v15, :cond_e

    invoke-virtual {v14, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/prineside/tdi2/BasicLevelStage;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevelStage;)Z

    move-result v15

    if-nez v15, :cond_1

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v5

    move/from16 v18, v8

    move/from16 v23, v11

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_1
    iget-object v15, v14, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v4, "A"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v15, 0x41800000    # 16.0f

    if-eqz v4, :cond_2

    add-float v16, v12, v15

    move/from16 v15, v16

    goto :goto_2

    :cond_2
    move v15, v12

    :goto_2
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v10, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/prineside/tdi2/screens/LevelSelectScreen$StageHeader;

    invoke-direct {v10, v0, v8, v14}, Lcom/prineside/tdi2/screens/LevelSelectScreen$StageHeader;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;FLcom/prineside/tdi2/BasicLevelStage;)V

    invoke-virtual {v10, v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v10

    add-float/2addr v15, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_3
    iget-object v6, v14, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    move/from16 v18, v8

    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v19, 0x43820000    # 260.0f

    if-ge v10, v8, :cond_5

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/BasicLevel;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v8

    if-nez v8, :cond_3

    move/from16 v20, v1

    goto :goto_4

    :cond_3
    new-instance v8, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    move/from16 v20, v1

    const/4 v1, 0x0

    invoke-direct {v8, v0, v6, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/BasicLevel;Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->i:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v6, v6, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v1, v13

    const/high16 v6, 0x43aa0000    # 340.0f

    mul-float v1, v1, v6

    add-float/2addr v1, v2

    invoke-virtual {v8, v1, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_4

    add-float v15, v15, v19

    const/4 v13, 0x0

    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v18

    move/from16 v1, v20

    goto :goto_3

    :cond_5
    move/from16 v20, v1

    iget-object v1, v14, Lcom/prineside/tdi2/BasicLevelStage;->name:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "blank"

    if-eqz v1, :cond_9

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/BasicLevelStage;->levels:Lcom/badlogic/gdx/utils/Array;

    const/4 v6, 0x0

    :goto_5
    iget v14, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v14, :cond_8

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/prineside/tdi2/BasicLevel;

    iget-object v10, v14, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v21, v1

    iget v1, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v10}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isVisible(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v21

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_9

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    int-to-float v6, v13

    const/high16 v10, 0x43aa0000    # 340.0f

    mul-float v6, v6, v10

    add-float/2addr v6, v2

    invoke-virtual {v1, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43700000    # 240.0f

    const/high16 v14, 0x43a00000    # 320.0f

    invoke-virtual {v1, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const-string v10, "level_select_skip_tutorials_button"

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v10, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v21, v2

    const v2, 0x3e8f5c29    # 0.28f

    move/from16 v22, v5

    const/4 v5, 0x0

    invoke-direct {v14, v5, v5, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-rewind"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v2, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "skip_tutorials"

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move/from16 v23, v11

    const/16 v11, 0x18

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v2, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/screens/LevelSelectScreen$3;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$3;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v13, v13, 0x1

    if-ne v13, v9, :cond_a

    add-float v15, v15, v19

    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    move/from16 v21, v2

    move/from16 v22, v5

    move/from16 v23, v11

    :cond_a
    :goto_8
    if-eqz v13, :cond_b

    add-float v15, v15, v19

    :cond_b
    if-eqz v4, :cond_d

    const/high16 v1, 0x41800000    # 16.0f

    add-float/2addr v15, v1

    sub-float v1, v15, v12

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v5, 0x3d4ccccd    # 0.05f

    const v6, 0x3ca3d70a    # 0.02f

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v4, v5, v6, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->scissors:Z

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v6, 0x0

    :goto_9
    iget v8, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v10, 0x3f000000    # 0.5f

    if-ge v6, v8, :cond_c

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getXOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v11

    neg-float v12, v3

    mul-float v12, v12, v10

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v8

    const/high16 v10, 0x44000000    # 512.0f

    div-float v10, v3, v10

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scale(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    mul-float v10, v10, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v10, v5}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e0f5c29    # 0.14f

    invoke-direct {v4, v5, v5, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v6, 0x8

    new-array v8, v6, [F

    const/4 v10, 0x0

    aput v5, v8, v10

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v11, 0x1

    aput v10, v8, v11

    const/4 v10, 0x2

    aput v5, v8, v10

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v11, 0x3

    aput v5, v8, v11

    const/4 v5, 0x4

    aput v3, v8, v5

    const/high16 v12, 0x41c00000    # 24.0f

    const/4 v13, 0x5

    aput v12, v8, v13

    const/4 v12, 0x6

    aput v3, v8, v12

    const/high16 v14, 0x40800000    # 4.0f

    const/16 v19, 0x7

    aput v14, v8, v19

    invoke-direct {v2, v4, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v4, 0x41700000    # 15.0f

    sub-float/2addr v1, v4

    const/high16 v4, 0x41000000    # 8.0f

    sub-float v4, v1, v4

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    new-array v14, v6, [F

    const/16 v17, 0x0

    aput v8, v14, v17

    const/high16 v16, 0x41800000    # 16.0f

    const/16 v17, 0x1

    aput v16, v14, v17

    aput v8, v14, v10

    aput v16, v14, v11

    aput v3, v14, v5

    aput v16, v14, v13

    aput v3, v14, v12

    aput v8, v14, v19

    invoke-direct {v2, v4, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v2, v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v2, v6, [F

    const/4 v6, 0x0

    aput v8, v2, v6

    const/4 v14, 0x1

    aput v8, v2, v14

    aput v8, v2, v10

    aput v8, v2, v11

    aput v3, v2, v5

    const/high16 v5, 0x41800000    # 16.0f

    aput v5, v2, v13

    aput v3, v2, v12

    aput v8, v2, v19

    invoke-direct {v1, v4, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :goto_a
    move v12, v15

    :goto_b
    add-int/lit8 v11, v23, 0x1

    move/from16 v8, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v5, v22

    const/high16 v10, 0x43a00000    # 320.0f

    const/high16 v13, 0x43aa0000    # 340.0f

    goto/16 :goto_1

    :cond_e
    move/from16 v20, v1

    move/from16 v22, v5

    const/high16 v1, 0x43000000    # 128.0f

    add-float/2addr v12, v1

    cmpg-float v1, v12, v22

    if-gez v1, :cond_f

    move/from16 v5, v22

    goto :goto_c

    :cond_f
    move v5, v12

    :goto_c
    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v4

    sub-float v4, v5, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    sub-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_d

    :cond_10
    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->layout()V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollY(F)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v1, v2, :cond_11

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->leaderBoardManager:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen;->n:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->getBasicLevelsTopLeaderboards(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_12
    return-void
.end method
