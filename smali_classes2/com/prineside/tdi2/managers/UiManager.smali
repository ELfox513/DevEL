.class public Lcom/prineside/tdi2/managers/UiManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/Game$ScreenResizeListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/UiManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;,
        Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;,
        Lcom/prineside/tdi2/managers/UiManager$UiLayer;,
        Lcom/prineside/tdi2/managers/UiManager$Serializer;
    }
.end annotation


# static fields
.field public static final t:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/managers/UiManager$UiLayer;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lcom/badlogic/gdx/math/Vector2;

.field public static final v:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

.field public b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

.field public backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

.field public cameraTools:Lcom/prineside/tdi2/ui/shared/CameraTools;

.field public final d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public dailyLootOverlay:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

.field public dailyQuestOverlay:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

.field public darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

.field public developerConsole:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

.field public dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

.field public difficultyModeOverlay:Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;

.field public forwardButton:Lcom/prineside/tdi2/ui/shared/ForwardButton;

.field public inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

.field public issuedPrizesOverlay:Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;

.field public itemCellFlashParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public itemCellShapes:[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

.field public itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

.field public itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

.field public final k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final layers:[Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/UiManager$UiLayer;",
            ">;"
        }
    .end annotation
.end field

.field public leaderboardsOverlay:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

.field public levelConfigurationEditor:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

.field public luckyWheelOverlay:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

.field public final mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public mainMenuUiScene:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

.field public musicListOverlay:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

.field public notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

.field public openedPackOverlay:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

.field public p:I

.field public profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

.field public q:F

.field public questPrestigeOverlay:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

.field public r:Z

.field public ratingForm:Lcom/prineside/tdi2/ui/components/RatingForm;

.field public resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

.field public final s:Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;

.field public screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

.field public final stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field public textInputOverlay:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

.field public trophiesListOverlay:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

.field public trophyViewOverlay:Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;

.field public final viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

.field public wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/managers/UiManager$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/UiManager$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager;->t:Ljava/util/Comparator;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager;->u:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/UiManager;->v:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->values:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/utils/Array;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/managers/UiManager;->r:Z

    sget-object v2, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v3, v4, v1

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-array v2, v3, [Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellShapes:[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-instance v2, Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;-><init>(Lcom/prineside/tdi2/managers/UiManager;Lcom/prineside/tdi2/managers/UiManager$1;)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->s:Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;

    new-instance v2, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    new-instance v3, Lcom/prineside/tdi2/managers/UiManager$2;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/RenderingManager;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v3, p0, v2, v4}, Lcom/prineside/tdi2/managers/UiManager$2;-><init>(Lcom/prineside/tdi2/managers/UiManager;Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iput-object v3, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "main_ui_layer_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v7, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput-object v6, v7, v8

    iget-object v7, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, p0, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v7, Lcom/badlogic/gdx/utils/Array;

    const-class v8, Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    aput-object v7, v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/UiManager;->p:I

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x6e

    const-string v3, "Highlight actors"

    invoke-virtual {p0, v0, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const v2, 0xf4240

    const-string v3, "UiManager safe area"

    invoke-virtual {p0, v0, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "particles/item-cell.prt"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "particle-triangle"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v3, 0x4

    const/16 v4, 0x80

    invoke-direct {v2, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellFlashParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v6, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    aget-object v6, v6, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "item-cell-a-coat-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v6, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "item-cell-b-coat-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    aput-object v4, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellShapes:[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "item-cell-a-shape"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCellShapes:[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "item-cell-b-shape"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->rebuildLayers()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/UiManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/managers/UiManager;->r:Z

    return p0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager;->u:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/UiManager;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/UiManager;->g(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/UiManager;)Lcom/prineside/tdi2/ui/shared/WebBrowser;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/UiManager;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/UiManager;Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/shared/WebBrowser;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/UiManager;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    return-object p1
.end method


# virtual methods
.method public addHighlight(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/prineside/tdi2/ui/actors/HighlightActor;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/actors/HighlightActor;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/ui/actors/HighlightActor;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UiManager;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object p1

    return-object p1
.end method

.method public addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 7

    new-instance v6, Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;-><init>(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;ILjava/lang/String;Lcom/prineside/tdi2/managers/UiManager$1;)V

    iput-boolean p4, v6, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->ignoreSafeMargin:Z

    iget-object p2, p0, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->rebuildLayers()V

    return-object v6
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public dumpActorsHierarchy(Lcom/badlogic/gdx/scenes/scene2d/Group;I)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, " "

    const-string v3, "UiManager"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    array-length v4, p1

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, p1, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (Group)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->dumpActorsHierarchy(Lcom/badlogic/gdx/scenes/scene2d/Group;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object p1

    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->dumpActorsHierarchy(Lcom/badlogic/gdx/scenes/scene2d/Group;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final f(Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate actor name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    instance-of v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object p2

    const/4 v0, 0x0

    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, p1, v2}, Lcom/prineside/tdi2/managers/UiManager;->f(Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDuplicateActorNames()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p0, v0, v4}, Lcom/prineside/tdi2/managers/UiManager;->f(Lcom/badlogic/gdx/utils/ObjectSet;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Ljava/lang/CharSequence;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager;->v:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    move-object v1, p1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager;->v:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v1, "No listeners in parents of "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/managers/UiManager;->v:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const-string v2, " < "

    if-eqz v1, :cond_4

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v0, :cond_6

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_6
    const-string v0, "stage"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p1
.end method

.method public getRegularLayerWidth()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScreenSafeMargin()I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->getInitConfigManager()Lcom/prineside/tdi2/ActionResolver$InitConfigManager;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;->GRAPHICS_SAFE_AREA:Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ActionResolver$InitConfigManager;->get(Lcom/prineside/tdi2/managers/SettingsManager$InitConfig;)I

    move-result v0

    return v0
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->textInputOverlay:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;->show(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/ui/shared/WebBrowser;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    return-object v0
.end method

.method public hideAllComponents()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->textInputOverlay:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->issuedPrizesOverlay:Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->leaderboardsOverlay:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->trophiesListOverlay:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->openedPackOverlay:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->hide(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->musicListOverlay:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dailyLootOverlay:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->luckyWheelOverlay:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->levelConfigurationEditor:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->questPrestigeOverlay:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->b:Lcom/prineside/tdi2/ui/shared/WebBrowser;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->ratingForm:Lcom/prineside/tdi2/ui/components/RatingForm;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/components/RatingForm;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;->hide()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/BackButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/BackButton;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->forwardButton:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ForwardButton;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->setVisible(Z)Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->setVisible(Z)V

    return-void
.end method

.method public postRender(F)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->cameraTools:Lcom/prineside/tdi2/ui/shared/CameraTools;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->postRender(F)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->postRender(F)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->postRender(F)V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->musicListOverlay:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->postRender(F)V

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dailyLootOverlay:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;->postRender(F)V

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->luckyWheelOverlay:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->postRender(F)V

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->postRender(F)V

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->postRender(F)V

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/Dialog;->postRender(F)V

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->textInputOverlay:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;->postRender(F)V

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->isDrawing()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    :cond_a
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, "UI-act"

    invoke-virtual {v2, v0, v3, v4}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, "UI-draw"

    invoke-virtual {v2, v0, v3, v4}, Lcom/prineside/tdi2/managers/DebugManager;->registerFrameJob(Ljava/lang/String;J)V

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->draw()V

    :goto_0
    iget v0, p0, Lcom/prineside/tdi2/managers/UiManager;->q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/managers/UiManager;->q:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/managers/UiManager;->q:F

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {p1}, Lcom/badlogic/gdx/Input;->getRotation()I

    move-result p1

    iget v0, p0, Lcom/prineside/tdi2/managers/UiManager;->p:I

    if-eq v0, p1, :cond_c

    iput p1, p0, Lcom/prineside/tdi2/managers/UiManager;->p:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->rebuildLayers()V

    :cond_c
    return-void
.end method

.method public preRender(F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->preRender(F)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->preRender(F)V

    :cond_1
    return-void
.end method

.method public rebuildLayers()V
    .locals 13

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->setUnitsPerPixel(F)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/badlogic/gdx/utils/viewport/ScreenViewport;->update(IIZ)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "transparent"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    int-to-float v7, v0

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    neg-int v8, v0

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v9, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v9}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v1, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v1}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v1

    int-to-float v0, v0

    sub-float v3, v1, v0

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->values:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    iget-object v10, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v9, v10, v9

    invoke-virtual {v9, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    sget-object v10, Lcom/prineside/tdi2/managers/UiManager;->t:Ljava/util/Comparator;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->values:[Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    array-length v7, v6

    :goto_3
    if-ge v2, v7, :cond_6

    aget-object v8, v6, v2

    iget-object v9, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v9, p0, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget-boolean v11, v10, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->ignoreSafeMargin:Z

    if-eqz v11, :cond_4

    invoke-static {v10}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v11

    invoke-virtual {v11, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-static {v10}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v11

    invoke-virtual {v11, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    goto :goto_5

    :cond_4
    invoke-static {v10}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v11

    invoke-virtual {v11, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-static {v10}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v11

    invoke-virtual {v11, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    :goto_5
    iget-object v11, p0, Lcom/prineside/tdi2/managers/UiManager;->mainLayerGroups:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    invoke-static {v10}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public removeAllHighlights()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeHighlight(Lcom/prineside/tdi2/ui/actors/HighlightActor;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->layers:[Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->mainUiLayer:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->rebuildLayers()V

    return-void
.end method

.method public resize(II)V
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->rebuildLayers()V

    :cond_0
    return-void
.end method

.method public setAsInputHandler()V
    .locals 2

    const-string v0, "UiManager"

    const-string v1, "stage now handles all input"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method

.method public setLogTouchDownsEnabled(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DISABLE_UI_TOUCH_LOG:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/UiManager;->r:Z

    return-void
.end method

.method public setup()V
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/Dialog;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/TextInputOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->textInputOverlay:Lcom/prineside/tdi2/ui/shared/TextInputOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCreationOverlay:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemCountSelectionOverlay:Lcom/prineside/tdi2/ui/shared/ItemCountSelectionOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->musicListOverlay:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dailyLootOverlay:Lcom/prineside/tdi2/ui/shared/DailyLootOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->luckyWheelOverlay:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->levelConfigurationEditor:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->questPrestigeOverlay:Lcom/prineside/tdi2/ui/shared/QuestPrestigeOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->inventoryOverlay:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->openedPackOverlay:Lcom/prineside/tdi2/ui/shared/OpenedPackOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->issuedPrizesOverlay:Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->leaderboardsOverlay:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->trophiesListOverlay:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->wavesTimelineOverlay:Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/components/RatingForm;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/components/RatingForm;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->ratingForm:Lcom/prineside/tdi2/ui/components/RatingForm;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->trophyViewOverlay:Lcom/prineside/tdi2/ui/shared/TrophyViewOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->dailyQuestOverlay:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->difficultyModeOverlay:Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/Notifications;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/Notifications;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/BackButton;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->backButton:Lcom/prineside/tdi2/ui/shared/BackButton;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->forwardButton:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ScreenTitle;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->screenTitle:Lcom/prineside/tdi2/ui/shared/ScreenTitle;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/LoadingOverlay;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->loadingOverlay:Lcom/prineside/tdi2/ui/shared/LoadingOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->resourcesAndMoney:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->mainMenuUiScene:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->cameraTools:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {}, Lcom/prineside/tdi2/Config;->isModdingMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isDeveloperModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/shared/DeveloperConsole;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/UiManager;->developerConsole:Lcom/prineside/tdi2/ui/shared/DeveloperConsole;

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    new-instance v1, Lcom/prineside/tdi2/managers/UiManager$3;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/UiManager$3;-><init>(Lcom/prineside/tdi2/managers/UiManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addListener(Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/UiManager;->s:Lcom/prineside/tdi2/managers/UiManager$_ScreenManagerListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ScreenManager;->addListener(Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    new-instance v1, Lcom/prineside/tdi2/managers/UiManager$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/UiManager$4;-><init>(Lcom/prineside/tdi2/managers/UiManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->addListener(Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;)V

    return-void
.end method

.method public visibleDisplayFrameChanged()V
    .locals 0

    return-void
.end method
