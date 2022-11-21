.class public Lcom/prineside/tdi2/screens/ResearchesScreen;
.super Lcom/prineside/tdi2/Screen;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;,
        Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/graphics/Color;

.field public static final B:Lcom/badlogic/gdx/graphics/Color;

.field public static final C:Lcom/badlogic/gdx/graphics/Color;

.field public static final D:Lcom/badlogic/gdx/graphics/Color;

.field public static final E:Lcom/badlogic/gdx/graphics/Color;

.field public static final F:[F

.field public static final G:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final H:Lcom/prineside/tdi2/utils/IntRectangle;

.field public static final I:Lcom/badlogic/gdx/graphics/Color;

.field public static final v:Lcom/badlogic/gdx/graphics/Color;

.field public static final w:Lcom/badlogic/gdx/graphics/Color;

.field public static final x:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:Lcom/badlogic/gdx/graphics/Color;

.field public static final z:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/badlogic/gdx/InputMultiplexer;

.field public c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public cameraController:Lcom/prineside/tdi2/CameraController;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public hoveredResearch:Lcom/prineside/tdi2/Research;

.field public i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public k:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public l:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public m:Lcom/prineside/tdi2/ui/components/ResearchMenu;

.field public n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public o:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;",
            ">;"
        }
    .end annotation
.end field

.field public r:F

.field public s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

.field public selectedResearch:Lcom/prineside/tdi2/Research;

.field public final t:Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;

.field public final u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->v:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e570a3d    # 0.21f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Lcom/prineside/tdi2/screens/ResearchesScreen;->w:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/screens/ResearchesScreen;->x:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->y:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->z:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->A:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->B:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->C:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e0f5c29    # 0.14f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->D:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->E:Lcom/badlogic/gdx/graphics/Color;

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->F:[F

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->G:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/prineside/tdi2/utils/IntRectangle;

    invoke-direct {v0}, Lcom/prineside/tdi2/utils/IntRectangle;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->H:Lcom/prineside/tdi2/utils/IntRectangle;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->I:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/screens/ResearchesScreen;-><init>(Lcom/prineside/tdi2/enums/ResearchType;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ResearchType;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/prineside/tdi2/Screen;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0x6a

    const-string v5, "ResearchesScreen"

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v3, Lcom/badlogic/gdx/InputMultiplexer;

    invoke-direct {v3}, Lcom/badlogic/gdx/InputMultiplexer;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->b:Lcom/badlogic/gdx/InputMultiplexer;

    new-instance v4, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v5, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7, v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->hoveredResearch:Lcom/prineside/tdi2/Research;

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    const/4 v5, 0x0

    iput v5, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->r:F

    new-instance v8, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;

    invoke-direct {v8, v0, v4}, Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/screens/ResearchesScreen$1;)V

    iput-object v8, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->t:Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;

    new-instance v9, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v9, v6, v7}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v9, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "researches"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-research"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/UiManager;->profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    new-instance v10, Lcom/prineside/tdi2/screens/ResearchesScreen$1;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/screens/ResearchesScreen$1;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/ui/shared/BackButton;->setClickHandler(Ljava/lang/Runnable;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/prineside/tdi2/ui/shared/BackButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/shared/BackButton;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "global-upgrades-icon-background"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "global-upgrades-icon-selection"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "blank"

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "particle-triangle"

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-star"

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "global-upgrades-icon-level-overlay"

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->k:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v10, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v10}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sget-object v12, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v12}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v4, v10, v12}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    new-instance v4, Lcom/prineside/tdi2/CameraController;

    iget-object v10, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapWidth()I

    move-result v12

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapHeight()I

    move-result v13

    invoke-direct {v4, v10, v12, v13}, Lcom/prineside/tdi2/CameraController;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;II)V

    iput-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    sget-object v10, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v10}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v10

    sget-object v12, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v12}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v12

    invoke-virtual {v4, v10, v12}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v12, 0x3fe00000    # 1.75f

    invoke-virtual {v4, v10, v12}, Lcom/prineside/tdi2/CameraController;->setZoomBoundaries(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    iput-wide v12, v4, Lcom/prineside/tdi2/CameraController;->zoom:D

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v12}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v4, v10, v12}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v4}, Lcom/prineside/tdi2/CameraController;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    new-instance v4, Lcom/prineside/tdi2/screens/ResearchesScreen$2;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/ResearchesScreen$2;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->l:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/actors/SideMenu;->sideShadow:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "ui-research-menu-top"

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x44160000    # 600.0f

    const/high16 v10, 0x41700000    # 15.0f

    invoke-virtual {v3, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2b2b2bff

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const v10, 0x44748000    # 978.0f

    invoke-virtual {v3, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v13, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v14, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->l:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v14}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->l:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/components/ResearchMenu;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->l:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-direct {v3, v4, v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->m:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/screens/ResearchesScreen$3;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/ResearchesScreen$3;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v2, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x42da0000    # 109.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x43080000    # 136.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-restart"

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    new-instance v14, Lcom/prineside/tdi2/screens/i0;

    invoke-direct {v14}, Lcom/prineside/tdi2/screens/i0;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v2

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v21

    invoke-direct/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, -0x3d800000    # -64.0f

    invoke-virtual {v2, v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v13, 0x42800000    # 64.0f

    invoke-virtual {v2, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v2, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v2, v15, v15}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-density-low"

    invoke-virtual {v15, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    new-instance v15, Lcom/prineside/tdi2/screens/j0;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/screens/j0;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    move-object/from16 v17, v15

    const/high16 v7, 0x41000000    # 8.0f

    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v21

    invoke-direct/range {v15 .. v20}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-density-medium"

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v16

    new-instance v6, Lcom/prineside/tdi2/screens/k0;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/screens/k0;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    move-object v15, v2

    move-object/from16 v17, v6

    invoke-direct/range {v15 .. v20}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x43000000    # 128.0f

    invoke-virtual {v2, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-density-high"

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v16

    new-instance v6, Lcom/prineside/tdi2/screens/l0;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/screens/l0;-><init>(Lcom/prineside/tdi2/screens/ResearchesScreen;)V

    move-object v15, v2

    move-object/from16 v17, v6

    invoke-direct/range {v15 .. v20}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x43400000    # 192.0f

    invoke-virtual {v2, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v2, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v6, 0x42280000    # 42.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->updateStarsCount()V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "particles/research.prt"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "particles/research-completed.prt"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->blank:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v4, 0x8

    const/16 v5, 0x100

    invoke-direct {v3, v2, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/ResearchManager;->addListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V

    if-eqz v1, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getResearchInstance(Lcom/prineside/tdi2/enums/ResearchType;)Lcom/prineside/tdi2/Research;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v2}, Lcom/prineside/tdi2/CameraController;->getMinZoom()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget v3, v1, Lcom/prineside/tdi2/Research;->x:I

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v1, Lcom/prineside/tdi2/Research;->y:I

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->s(Lcom/prineside/tdi2/Research;)V

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->q()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/prineside/tdi2/screens/ResearchesScreen;->n()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->p()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/ResearchesScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->o()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/ResearchesScreen;->m(Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->r(Lcom/prineside/tdi2/Research;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/ResearchesScreen;Lcom/prineside/tdi2/Research;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/ResearchesScreen;->s(Lcom/prineside/tdi2/Research;)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/ResearchesScreen;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/screens/ResearchesScreen;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic n()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->reload()V

    return-void
.end method

.method private synthetic o()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->l()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v2, "Minimal research enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method private synthetic p()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->l()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->k()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v2, "Average research enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method

.method private synthetic q()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/ResearchesScreen;->j()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->checkResearchesStatus(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    const-string v2, "Full research enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->t:Lcom/prineside/tdi2/screens/ResearchesScreen$_ResearchManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ResearchManager;->removeListener(Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->l:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->m:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->dispose()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public draw(F)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "menu_background"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v4, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v3, v4, v5, v6, v2}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x4100

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    return-void

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-wide v3, v3, Lcom/prineside/tdi2/CameraController;->zoom:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/4 v14, 0x0

    const/4 v15, 0x1

    cmpg-double v7, v3, v5

    if-gez v7, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    :goto_0
    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/CameraController;->realUpdate(F)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinX()I

    move-result v13

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getMapMinY()I

    move-result v12

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->enableBlending()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getPolygonSprites()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ResearchManager;->getLinks()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    const/4 v5, 0x0

    :goto_1
    iget v6, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_4

    iget-object v6, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, [Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;->visibleWith:Lcom/prineside/tdi2/Research;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, [Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;->visibleWith:Lcom/prineside/tdi2/Research;

    iget v7, v7, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v7, :cond_3

    :cond_2
    check-cast v6, [Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ResearchManager$PolygonConfig;->sprite:Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    iget-object v7, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->s:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->c:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const/16 v10, 0x302

    const/16 v9, 0x303

    invoke-virtual {v2, v10, v9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->r:F

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float v5, v5, v1

    add-float/2addr v3, v5

    const/high16 v17, 0x3f800000    # 1.0f

    rem-float v3, v3, v17

    iput v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->r:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v19, 0x3f000000    # 0.5f

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v3, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/prineside/tdi2/Research$ResearchLink;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ResearchManager;->isVisible(Lcom/prineside/tdi2/Research;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ResearchManager;->isVisible(Lcom/prineside/tdi2/Research;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->H:Lcom/prineside/tdi2/utils/IntRectangle;

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v4, v13

    iget-object v5, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->min(II)I

    move-result v4

    iput v4, v3, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v4, v12

    iget-object v5, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v5, v12

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->min(II)I

    move-result v4

    iput v4, v3, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v4, v13

    iget-object v5, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->max(II)I

    move-result v4

    iput v4, v3, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v4, v12

    iget-object v5, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v5, v12

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->max(II)I

    move-result v4

    iput v4, v3, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/CameraController;->isRectVisible(Lcom/prineside/tdi2/utils/IntRectangle;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v3, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v4, v3, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v4, :cond_7

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-gtz v4, :cond_8

    :cond_7
    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v4, v4, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v4, :cond_9

    iget v3, v3, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-lez v3, :cond_9

    :cond_8
    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->v:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    move-object v6, v3

    goto :goto_4

    :cond_9
    invoke-virtual {v7}, Lcom/prineside/tdi2/Research$ResearchLink;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->v:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_a
    iget-object v3, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v3, v3, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v3, :cond_b

    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->x:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_b
    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->w:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :goto_4
    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->F:[F

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v4, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v5, v13

    int-to-float v5, v5

    aput v5, v3, v14

    iget v4, v4, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v4, v12

    int-to-float v4, v4

    aput v4, v3, v15

    const/4 v4, 0x2

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v5

    aput v5, v3, v4

    iget v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->pivotX:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    move-object/from16 v20, v11

    const/4 v11, 0x3

    aput v4, v3, v11

    iget v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->pivotY:I

    sub-int/2addr v4, v12

    int-to-float v4, v4

    const/16 v21, 0x4

    aput v4, v3, v21

    const/4 v4, 0x5

    aput v5, v3, v4

    iget-object v4, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v9, v4, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v9, v13

    int-to-float v9, v9

    const/16 v23, 0x6

    aput v9, v3, v23

    iget v4, v4, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v4, v12

    int-to-float v4, v4

    const/16 v24, 0x7

    aput v4, v3, v24

    const/16 v4, 0x8

    aput v5, v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    iget-object v5, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->f:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-static {v2, v4, v5, v3}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedMultiLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V

    if-eqz v16, :cond_10

    iget-object v3, v7, Lcom/prineside/tdi2/Research$ResearchLink;->child:Lcom/prineside/tdi2/Research;

    iget v3, v3, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-nez v3, :cond_10

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v11, :cond_f

    iget v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->r:F

    const v4, 0x3eaa7efa    # 0.333f

    int-to-float v5, v9

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    rem-float v3, v3, v17

    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->F:[F

    aget v5, v4, v14

    aget v10, v4, v11

    cmpl-float v26, v5, v10

    if-nez v26, :cond_c

    aget v26, v4, v15

    aget v11, v4, v21

    cmpl-float v26, v26, v11

    if-nez v26, :cond_c

    aget v5, v4, v23

    sub-float v26, v5, v10

    mul-float v26, v26, v3

    add-float v26, v26, v10

    aget v4, v4, v24

    sub-float v28, v4, v11

    mul-float v28, v28, v3

    add-float v28, v28, v11

    invoke-static {v10, v11, v5, v4}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v3

    move v14, v3

    move/from16 v11, v26

    move/from16 v10, v28

    goto :goto_7

    :cond_c
    aget v11, v4, v23

    cmpl-float v26, v11, v10

    if-nez v26, :cond_d

    aget v26, v4, v24

    aget v14, v4, v21

    cmpl-float v26, v26, v14

    if-nez v26, :cond_d

    sub-float v11, v10, v5

    mul-float v11, v11, v3

    add-float v26, v11, v5

    aget v4, v4, v15

    sub-float v11, v14, v4

    mul-float v11, v11, v3

    add-float v3, v11, v4

    invoke-static {v5, v4, v10, v14}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v4

    goto :goto_6

    :cond_d
    cmpg-float v14, v3, v19

    if-gez v14, :cond_e

    sub-float v11, v10, v5

    mul-float v11, v11, v3

    mul-float v11, v11, v8

    add-float v26, v11, v5

    aget v11, v4, v21

    aget v4, v4, v15

    sub-float v14, v11, v4

    mul-float v14, v14, v3

    mul-float v14, v14, v8

    add-float v3, v14, v4

    invoke-static {v5, v4, v10, v11}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v4

    goto :goto_6

    :cond_e
    sub-float v5, v11, v10

    sub-float v3, v3, v19

    mul-float v5, v5, v3

    mul-float v5, v5, v8

    add-float v26, v5, v10

    aget v5, v4, v24

    aget v4, v4, v21

    sub-float v14, v5, v4

    mul-float v14, v14, v3

    mul-float v14, v14, v8

    add-float v3, v14, v4

    invoke-static {v10, v4, v11, v5}, Lcom/prineside/tdi2/utils/PMath;->getAngleBetweenPoints(FFFF)F

    move-result v4

    :goto_6
    move v10, v3

    move v14, v4

    move/from16 v11, v26

    :goto_7
    const/high16 v3, 0x43340000    # 180.0f

    sub-float v3, v14, v3

    invoke-static {v11, v10, v3, v8}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v26, 0x41000000    # 8.0f

    sub-float v5, v5, v26

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v29, v3, v26

    const/high16 v30, 0x41000000    # 8.0f

    const/high16 v31, 0x41000000    # 8.0f

    const/high16 v32, 0x41800000    # 16.0f

    const/high16 v33, 0x41800000    # 16.0f

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v35, 0x3f800000    # 1.0f

    move-object v3, v2

    move-object v15, v6

    move/from16 v6, v29

    move-object/from16 v29, v7

    move/from16 v7, v30

    const/high16 v30, 0x40000000    # 2.0f

    move/from16 v8, v31

    move/from16 v22, v9

    move/from16 v9, v32

    move/from16 v36, v10

    move/from16 v10, v33

    move/from16 v38, v11

    move-object/from16 v37, v20

    const/16 v20, 0x3

    move/from16 v11, v34

    move/from16 v39, v12

    move/from16 v12, v35

    move v1, v13

    move v13, v14

    invoke-virtual/range {v3 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    const/high16 v3, 0x40400000    # 3.0f

    move/from16 v12, v36

    move/from16 v13, v38

    invoke-static {v13, v12, v14, v3}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v5, v5, v26

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v6, v3, v26

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object v3, v2

    move/from16 v27, v12

    move/from16 v12, v25

    move/from16 v25, v13

    move v13, v14

    invoke-virtual/range {v3 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->g:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v5, v25, v26

    sub-float v6, v27, v26

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    add-int/lit8 v9, v22, 0x1

    move v13, v1

    move-object v6, v15

    move-object/from16 v7, v29

    move-object/from16 v20, v37

    move/from16 v12, v39

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v10, 0x302

    const/4 v11, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    move/from16 v1, p1

    goto/16 :goto_5

    :cond_f
    move-object/from16 v29, v7

    move/from16 v39, v12

    move v1, v13

    move-object/from16 v37, v20

    const/high16 v30, 0x40000000    # 2.0f

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8

    :cond_10
    move-object/from16 v29, v7

    move/from16 v39, v12

    move v1, v13

    move-object/from16 v37, v20

    const/high16 v30, 0x40000000    # 2.0f

    :goto_8
    if-eqz v16, :cond_11

    invoke-virtual/range {v29 .. v29}, Lcom/prineside/tdi2/Research$ResearchLink;->isVisible()Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v3, v29

    iget v4, v3, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_11

    iget v4, v3, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelX:I

    int-to-float v4, v4

    const/high16 v5, 0x43020000    # 130.0f

    sub-float/2addr v4, v5

    int-to-float v5, v1

    sub-float v11, v4, v5

    iget v4, v3, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevelsLabelY:I

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float/2addr v4, v5

    move/from16 v12, v39

    int-to-float v5, v12

    sub-float/2addr v4, v5

    sget-object v13, Lcom/prineside/tdi2/screens/ResearchesScreen;->G:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v5, v3, Lcom/prineside/tdi2/Research$ResearchLink;->parent:Lcom/prineside/tdi2/Research;

    iget v5, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v3, v3, Lcom/prineside/tdi2/Research$ResearchLink;->requiredLevels:I

    invoke-virtual {v13, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-float v6, v11, v30

    const/high16 v5, 0x41e00000    # 28.0f

    add-float v14, v4, v5

    sub-float v7, v14, v30

    const/high16 v8, 0x43820000    # 260.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, v13

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object v4, v2

    move v6, v11

    move v7, v14

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    goto :goto_9

    :cond_11
    move/from16 v12, v39

    :goto_9
    move v13, v1

    move-object/from16 v11, v37

    const/16 v9, 0x303

    const/16 v10, 0x302

    const/4 v14, 0x0

    const/4 v15, 0x1

    :cond_12
    move/from16 v1, p1

    goto/16 :goto_2

    :cond_13
    move v1, v13

    const/high16 v30, 0x40000000    # 2.0f

    iget v13, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v13, :cond_26

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/prineside/tdi2/Research;

    iget v3, v15, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v3, v1

    int-to-float v10, v3

    iget v3, v15, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v3, v12

    int-to-float v9, v3

    const/high16 v18, 0x425c0000    # 55.0f

    sub-float v8, v10, v18

    sub-float v7, v9, v18

    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->H:Lcom/prineside/tdi2/utils/IntRectangle;

    float-to-int v4, v8

    iput v4, v3, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    float-to-int v5, v7

    iput v5, v3, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    add-int/lit8 v4, v4, 0x6e

    iput v4, v3, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    add-int/lit8 v5, v5, 0x6e

    iput v5, v3, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/CameraController;->isRectVisible(Lcom/prineside/tdi2/utils/IntRectangle;)Z

    move-result v3

    if-nez v3, :cond_14

    :goto_b
    move-object/from16 v37, v11

    goto/16 :goto_14

    :cond_14
    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    const/high16 v4, 0x42700000    # 60.0f

    if-ne v3, v15, :cond_15

    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->E:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v6, v10, v4

    sub-float v20, v9, v4

    const/high16 v21, 0x42f00000    # 120.0f

    const/high16 v22, 0x42f00000    # 120.0f

    move-object v3, v2

    move-object v4, v5

    move v5, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, v22

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_c

    :cond_15
    move/from16 v20, v7

    move/from16 v21, v8

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->hoveredResearch:Lcom/prineside/tdi2/Research;

    if-ne v3, v15, :cond_16

    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->D:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v6, v10, v4

    sub-float v7, v9, v4

    const/high16 v8, 0x42f00000    # 120.0f

    const/high16 v22, 0x42f00000    # 120.0f

    move-object v3, v2

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move/from16 v8, v22

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_16
    :goto_c
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3, v15}, Lcom/prineside/tdi2/managers/ResearchManager;->isVisible(Lcom/prineside/tdi2/Research;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_b

    :cond_17
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v15, v4}, Lcom/prineside/tdi2/managers/ResearchManager;->canStartResearching(Lcom/prineside/tdi2/Research;Z)Z

    move-result v22

    if-eqz v22, :cond_19

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    rem-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    mul-float v3, v3, v4

    cmpg-float v4, v3, v19

    if-gez v4, :cond_18

    mul-float v3, v3, v30

    goto :goto_d

    :cond_18
    sub-float v3, v3, v19

    mul-float v3, v3, v30

    sub-float v3, v17, v3

    :goto_d
    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->I:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/screens/ResearchesScreen;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/screens/ResearchesScreen;->C:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6, v3}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e

    :cond_19
    iget v3, v15, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v3, :cond_1a

    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->A:Lcom/badlogic/gdx/graphics/Color;

    :goto_e
    move-object v8, v4

    goto :goto_10

    :cond_1a
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/DifficultyMode;->EASY:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v3, v4, :cond_1d

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-ne v3, v4, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v15}, Lcom/prineside/tdi2/Research;->isMaxEndlessLevel()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->z:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e

    :cond_1c
    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->y:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e

    :cond_1d
    :goto_f
    invoke-virtual {v15}, Lcom/prineside/tdi2/Research;->isMaxNormalLevel()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->z:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e

    :cond_1e
    sget-object v4, Lcom/prineside/tdi2/screens/ResearchesScreen;->y:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_e

    :goto_10
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, 0x42dc0000    # 110.0f

    const/high16 v23, 0x42dc0000    # 110.0f

    move-object v3, v2

    move/from16 v5, v21

    move/from16 v6, v20

    move-object/from16 v37, v11

    move-object v11, v8

    move/from16 v8, v23

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget v3, v15, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-nez v3, :cond_1f

    sget-object v3, Lcom/prineside/tdi2/screens/ResearchesScreen;->A:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_11

    :cond_1f
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_11
    iget-object v3, v15, Lcom/prineside/tdi2/Research;->category:Lcom/prineside/tdi2/ResearchCategory;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResearchCategory;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    sub-float v5, v10, v4

    sub-float v4, v9, v4

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v3, v2, v5, v4, v6}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->drawBatch(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFF)V

    const/high16 v23, 0x42000000    # 32.0f

    if-eqz v16, :cond_24

    iget-object v3, v15, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v3, v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget v3, v15, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    :cond_20
    const/4 v4, 0x1

    if-le v3, v4, :cond_24

    iget v3, v15, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-eqz v3, :cond_24

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->h:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-float v5, v21, v18

    const/high16 v3, 0x41100000    # 9.0f

    add-float v6, v20, v3

    const/high16 v7, 0x42380000    # 46.0f

    const/high16 v8, 0x42100000    # 36.0f

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v11, Lcom/prineside/tdi2/screens/ResearchesScreen;->G:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v3, 0x4c

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, v15, Lcom/prineside/tdi2/Research;->installedLevel:I

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_12

    :cond_21
    iget v3, v15, Lcom/prineside/tdi2/Research;->installedLevel:I

    iget-object v4, v15, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v5, v4

    if-le v3, v5, :cond_22

    array-length v3, v4

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_12

    :cond_22
    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_12
    const/high16 v3, 0x42400000    # 48.0f

    if-eqz v22, :cond_23

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-float v18, v21, v3

    add-float v6, v18, v30

    add-float v20, v20, v23

    sub-float v7, v20, v30

    const/high16 v8, 0x42400000    # 48.0f

    const/16 v21, 0x10

    const/16 v22, 0x0

    move-object v3, v4

    move-object v4, v2

    move-object v5, v11

    move/from16 v24, v9

    move/from16 v9, v21

    move/from16 v25, v10

    move/from16 v10, v22

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v4, v2

    move/from16 v6, v18

    move/from16 v7, v20

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    goto :goto_13

    :cond_23
    move/from16 v24, v9

    move/from16 v25, v10

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-float v6, v21, v3

    add-float v7, v20, v23

    const/high16 v8, 0x42400000    # 48.0f

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v4

    move-object v4, v2

    move-object v5, v11

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->j:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_13

    :cond_24
    move/from16 v24, v9

    move/from16 v25, v10

    :goto_13
    if-eqz v16, :cond_25

    iget v3, v15, Lcom/prineside/tdi2/Research;->priceInStars:I

    if-lez v3, :cond_25

    sget-object v9, Lcom/prineside/tdi2/screens/ResearchesScreen;->G:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v3, v15, Lcom/prineside/tdi2/Research;->priceInStars:I

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const/high16 v3, 0x421a0000    # 38.5f

    add-float v10, v25, v3

    const/high16 v3, 0x41300000    # 11.0f

    add-float v15, v24, v3

    const v3, 0x3f0f5c29    # 0.56f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float v5, v10, v3

    sub-float v6, v15, v3

    const/high16 v7, 0x42080000    # 34.0f

    const/high16 v8, 0x42080000    # 34.0f

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P400:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->i:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v18, 0x41c00000    # 24.0f

    move v5, v10

    move v6, v15

    move-object v11, v8

    move/from16 v8, v18

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->k:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->k:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-float v6, v10, v23

    const/high16 v4, 0x41a80000    # 21.0f

    add-float v7, v15, v4

    const/high16 v8, 0x42c80000    # 100.0f

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v4, v2

    move-object v5, v9

    move v9, v10

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_25
    :goto_14
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v37

    goto/16 :goto_a

    :cond_26
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ResearchManager;->getCurrentResearching()Lcom/prineside/tdi2/Research;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    iget v4, v3, Lcom/prineside/tdi2/Research;->x:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget v3, v3, Lcom/prineside/tdi2/Research;->y:I

    sub-int/2addr v3, v12

    int-to-float v3, v3

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v4, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    move/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    goto :goto_15

    :cond_27
    move/from16 v3, p1

    :goto_15
    iget-object v1, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_2a

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    const/16 v1, 0x302

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v14, 0x0

    :goto_16
    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v14, v5, :cond_29

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    aget-object v4, v4, v14

    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->q:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_29
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    goto :goto_17

    :cond_2a
    const/16 v1, 0x302

    :goto_17
    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/16 v4, 0x303

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setBlendFunction(II)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/ResearchesScreen;->m:Lcom/prineside/tdi2/ui/components/ResearchMenu;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/components/ResearchMenu;->draw(F)V

    return-void
.end method

.method public final j()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v2, :cond_2

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v3

    if-eqz v1, :cond_1

    iget v4, v2, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v4, v4

    :goto_1
    iput v4, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Research;

    aget-object v2, v2, v3

    if-eqz v1, :cond_1

    iget v5, v2, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v5, v5

    :goto_1
    div-int/lit8 v5, v5, 0x2

    if-ge v5, v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    iget v6, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    if-ge v6, v5, :cond_3

    iput v5, v2, Lcom/prineside/tdi2/Research;->installedLevel:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final l()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->getInstances()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_6

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Research;

    aget-object v5, v5, v2

    iget-object v6, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    sget-object v7, Lcom/prineside/tdi2/enums/ResearchType;->ROOT:Lcom/prineside/tdi2/enums/ResearchType;

    if-eq v6, v7, :cond_5

    iget-boolean v7, v5, Lcom/prineside/tdi2/Research;->unlocksTower:Z

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MAX_EXP_LEVEL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MAX_UPGRADE_LEVEL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MINER_TYPE_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MODIFIER_TYPE_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/prineside/tdi2/Research;->type:Lcom/prineside/tdi2/enums/ResearchType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "STORYLINE_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iput v4, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    goto :goto_5

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    iget v6, v5, Lcom/prineside/tdi2/Research;->maxEndlessLevel:I

    goto :goto_3

    :cond_4
    iget-object v6, v5, Lcom/prineside/tdi2/Research;->levels:[Lcom/prineside/tdi2/Research$ResearchLevel;

    array-length v6, v6

    :goto_3
    iput v6, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    goto :goto_5

    :cond_5
    :goto_4
    iput v3, v5, Lcom/prineside/tdi2/Research;->installedLevel:I

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final m(Lcom/prineside/tdi2/Research;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/prineside/tdi2/Research;->x:I

    add-int/lit8 v2, v1, -0x37

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x37

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, p1, Lcom/prineside/tdi2/Research;->y:I

    add-int/lit8 v0, p1, -0x37

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x37

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final r(Lcom/prineside/tdi2/Research;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->hoveredResearch:Lcom/prineside/tdi2/Research;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->hoveredResearch:Lcom/prineside/tdi2/Research;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;->hoveredResearchChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Screen;->resize(II)V

    return-void
.end method

.method public final s(Lcom/prineside/tdi2/Research;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->selectedResearch:Lcom/prineside/tdi2/Research;

    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/screens/ResearchesScreen$ResearchesScreenListener;->selectedResearchChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->u:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public show()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->b:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    return-void
.end method

.method public updateStarsCount()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ResearchManager;->updateAndValidateStarBranch()V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/ResearchesScreen;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->researchManager:Lcom/prineside/tdi2/managers/ResearchManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ResearchManager;->getUnusedStarsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    return-void
.end method
