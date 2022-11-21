.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LevelMenuOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;,
        Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;,
        Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/prineside/tdi2/BasicLevel;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final synthetic k:Lcom/prineside/tdi2/screens/LevelSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V
    .locals 8

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v2, 0x44160000    # 600.0f

    const/high16 v3, 0x43be0000    # 380.0f

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-static {p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x44960000    # 1200.0f

    const/high16 v6, 0x443e0000    # 760.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-boolean v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->m()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/tiles/SourceTile;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->j(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/tiles/SourceTile;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->n()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->l()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->o(Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->p(ZZ)V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->i()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/tiles/SourceTile;Lcom/prineside/tdi2/tiles/SourceTile;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v5

    add-int/2addr v2, v5

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v3, :cond_2

    const/4 v3, 0x1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v6

    if-ge v0, v7, :cond_3

    aget-object v7, v6, v0

    invoke-virtual {p0, v7}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v1

    int-to-float v8, v8

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    mul-float v6, v6, v8

    add-float/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result p1

    mul-float v4, v4, p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result p0

    mul-float v5, v5, p0

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private synthetic k()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->p(ZZ)V

    return-void
.end method

.method private synthetic l()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method private synthetic m()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->p(ZZ)V

    return-void
.end method

.method private synthetic n()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    const-string v1, "LevelSelectScreen levelMenu"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->a:Z

    return v0
.end method

.method public final o(Lcom/prineside/tdi2/BasicLevel;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->b:Lcom/prineside/tdi2/BasicLevel;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->stageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getStage(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelStage;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x2f2f2fff

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v5, 0x8

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v5}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/BasicLevel;Z)V

    const/high16 v4, -0x3e180000    # -29.0f

    const v6, 0x44094000    # 549.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "level"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x43a50000    # 330.0f

    const v6, 0x44258000    # 662.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v2, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->mapEditingAvailable()Z

    move-result v3

    const/high16 v6, 0x42400000    # 48.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v10, 0x42800000    # 64.0f

    if-eqz v3, :cond_0

    new-instance v3, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-tools"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    new-instance v13, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$1;

    invoke-direct {v13, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P600:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P800:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v11, 0x447f0000    # 1020.0f

    const v12, 0x44218000    # 646.0f

    invoke-virtual {v3, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-edit"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    new-instance v14, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$2;

    invoke-direct {v14, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$2;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v7, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const v11, 0x44898000    # 1100.0f

    const v12, 0x44218000    # 646.0f

    invoke-virtual {v3, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v3

    const-string v12, "blank"

    const/16 v13, 0x15

    const/4 v7, 0x0

    if-eqz v3, :cond_21

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getStarMilestoneWaves()[I

    move-result-object v9

    const/4 v11, 0x0

    :goto_0
    const/4 v14, 0x3

    if-ge v11, v14, :cond_3

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-star"

    invoke-virtual {v4, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v15, 0x42840000    # 66.0f

    int-to-float v8, v11

    mul-float v8, v8, v15

    add-float/2addr v8, v4

    const/high16 v4, 0x43e60000    # 460.0f

    invoke-virtual {v14, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v14, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    rsub-int/lit8 v4, v11, 0x3

    if-lt v3, v4, :cond_1

    iget-object v15, v2, Lcom/prineside/tdi2/BasicLevelStage;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x1d1d1dff

    invoke-direct {v15, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    iget-object v6, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-ge v3, v4, :cond_2

    rsub-int/lit8 v4, v11, 0x2

    aget v6, v9, v4

    if-eqz v6, :cond_2

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget v4, v9, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v6, v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x43e48000    # 457.0f

    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/high16 v6, 0x42400000    # 48.0f

    const/16 v8, 0x24

    const/16 v13, 0x15

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-virtual {v2, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-wave"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v6, v1, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x24

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v4, 0x43b10000    # 354.0f

    invoke-virtual {v2, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-trophy"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-wide v8, v1, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    invoke-static {v8, v9}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/MinerManager;->minersAndEnergyAvailable()Z

    move-result v2

    const/4 v4, 0x4

    const/high16 v6, 0x41a00000    # 20.0f

    if-nez v2, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "resources"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v9, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x439f0000    # 318.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v8, 0x3e8f5c29    # 0.28f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9, v9, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x435c0000    # 220.0f

    const v11, 0x43928000    # 293.0f

    new-instance v13, Lcom/badlogic/gdx/utils/Array;

    const-class v14, Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-direct {v13, v5, v5, v14}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iget-object v14, v2, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v14, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_6

    iget-object v5, v2, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v15

    instance-of v10, v5, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v10, :cond_5

    check-cast v5, Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    const/high16 v10, 0x42800000    # 64.0f

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/prineside/tdi2/screens/v;

    invoke-direct {v2}, Lcom/prineside/tdi2/screens/v;-><init>()V

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_3
    iget v10, v13, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v10, :cond_c

    iget-object v10, v13, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/SourceTile;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v14

    sget-object v15, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v15

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v3, v4, :cond_7

    aget-object v7, v15, v3

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    int-to-float v4, v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v4, v4, v7

    sub-float v4, v11, v4

    invoke-virtual {v3, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v3, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v15, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v7, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v3

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_5
    if-ge v15, v7, :cond_a

    aget-object v11, v3, v15

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v8

    if-lez v8, :cond_9

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-object/from16 v20, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    mul-float v8, v8, v14

    const/high16 v3, 0x435c0000    # 220.0f

    mul-float v8, v8, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v9, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    move/from16 v19, v6

    const/high16 v3, 0x42200000    # 40.0f

    add-float v6, v3, v18

    invoke-virtual {v9, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v3, v11}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v3, 0x0

    cmpl-float v9, v18, v3

    if-lez v9, :cond_8

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x2f2f2fff

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_8
    add-float v18, v18, v8

    goto :goto_6

    :cond_9
    move-object/from16 v20, v3

    move/from16 v19, v6

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v19

    move-object/from16 v3, v20

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x435c0000    # 220.0f

    const v11, 0x43928000    # 293.0f

    goto/16 :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x10

    if-ne v5, v3, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    const/high16 v3, 0x43960000    # 300.0f

    const/4 v4, 0x4

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x435c0000    # 220.0f

    const v11, 0x43928000    # 293.0f

    goto/16 :goto_3

    :cond_c
    :goto_7
    iget-boolean v2, v1, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-eqz v2, :cond_14

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v2, v3, :cond_d

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_d
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "level_selection_overlay_xp_gain"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x42d40000    # 106.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v2, 0x0

    :goto_8
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AuthManager;->xpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_f

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x0

    :goto_a
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->localXpPlayedLevels:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_11

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v2, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    :goto_b
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->bonusXpLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_12

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->playedLevelXpCoeff:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "% XP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$3;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$3;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_c

    :cond_12
    if-eqz v3, :cond_13

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v4, v4, Lcom/prineside/tdi2/managers/AuthManager;->bonusLevelXpCoeff:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "% XP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v4, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$4;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$4;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_c

    :cond_13
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    const-string v4, "100% XP"

    invoke-direct {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :goto_c
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v3, 0x42800000    # 64.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_14
    iget-object v2, v1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_15

    new-instance v2, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V

    const/high16 v3, 0x43ee0000    # 476.0f

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_d

    :cond_15
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "level_has_no_wave_milestones"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v3, 0x44598000    # 870.0f

    const/high16 v4, 0x43300000    # 176.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43ee0000    # 476.0f

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_d
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "enemies"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x43dc0000    # 440.0f

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v2, 0x0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/enums/EnemyType;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v3, 0x43a38000    # 327.0f

    int-to-float v5, v2

    const/high16 v6, 0x42580000    # 54.0f

    mul-float v5, v5, v6

    add-float/2addr v5, v3

    const/high16 v3, 0x43c10000    # 386.0f

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_16
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v2

    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->forcedDifficulty:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eqz v3, :cond_17

    move-object v6, v3

    goto :goto_f

    :cond_17
    move-object v6, v2

    :goto_f
    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "waves"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;

    invoke-direct {v5, v0, v1, v6}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$5;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/enums/DifficultyMode;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-level-selection-waves-timeline-button"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x43410000    # 193.0f

    const/high16 v12, 0x42980000    # 76.0f

    move-object v7, v2

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v3, 0x43410000    # 193.0f

    const/high16 v4, 0x42980000    # 76.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-wave"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v10, 0x41e00000    # 28.0f

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v12, 0x42000000    # 32.0f

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v8, 0x42880000    # 68.0f

    const/high16 v9, 0x42080000    # 34.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v11, 0x41980000    # 19.0f

    const/16 v12, 0x8

    invoke-virtual/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v3, 0x44806000    # 1027.0f

    const/high16 v4, 0x43b90000    # 370.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-boolean v3, v1, Lcom/prineside/tdi2/BasicLevel;->customWaves:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_18
    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_1b

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "quests"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x43ae0000    # 348.0f

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_10
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v5, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_1a

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v3}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v2, v2, 0x1

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1a
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "completed"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x15

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v2, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v4, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v2, 0x44848000    # 1060.0f

    const/high16 v4, 0x43ae0000    # 348.0f

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$QuestsList;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V

    const/high16 v3, 0x42e80000    # 116.0f

    const/high16 v4, 0x43a50000    # 330.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-level-selection-vertical-scroll-hint"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v3, 0x43080000    # 136.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x44920000    # 1168.0f

    const/high16 v4, 0x43200000    # 160.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    if-eqz v2, :cond_37

    iget-boolean v2, v1, Lcom/prineside/tdi2/BasicLevel;->hasLeaderboards:Z

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/DifficultyMode;->NORMAL:Lcom/prineside/tdi2/enums/DifficultyMode;

    if-eq v2, v3, :cond_1c

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyMode()Lcom/prineside/tdi2/enums/DifficultyMode;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/enums/DifficultyMode;->isEndless(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, -0x103fd100

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, -0x103fd100

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v7, -0x103fd0b9

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    aput-object v5, v3, v4

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([Lcom/badlogic/gdx/graphics/Color;[F)V

    const v3, 0x44018000    # 518.0f

    const/high16 v4, 0x42a40000    # 82.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v3, 0x43a58000    # 331.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x44374000    # 733.0f

    const/high16 v4, 0x42820000    # 65.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42920000    # 73.0f

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v4, 0x44374000    # 733.0f

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42920000    # 73.0f

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->leaderBoardManager:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    sget-object v5, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v7, v1, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    sget-object v8, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->score:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    new-instance v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$6;

    invoke-direct {v9, v0, v3, v2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$6;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->getLeaderboardsRank(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    :cond_1d
    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "leaderboards"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$7;

    invoke-direct {v5, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$7;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/high16 v3, 0x43f00000    # 480.0f

    const/high16 v4, 0x42a40000    # 82.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-crown"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x42400000    # 48.0f

    const/high16 v15, 0x42400000    # 48.0f

    move-object v10, v2

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v11, 0x42ac0000    # 86.0f

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v13, 0x43480000    # 200.0f

    const/16 v15, 0x8

    invoke-virtual/range {v10 .. v15}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v3, 0x43a58000    # 331.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AbilityManager;->isAnyAbilityOpened()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_11

    :cond_1f
    new-instance v2, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "continue"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    new-instance v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;

    invoke-direct {v9, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    const-string v5, "icon-triangle-right"

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_20
    :goto_11
    new-instance v2, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "play"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    new-instance v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    const-string v12, "icon-triangle-right"

    move-object v10, v2

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;)V

    :goto_12
    const-string v1, "level_select_overlay_continue_button"

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    const/high16 v1, 0x444b0000    # 812.0f

    const/high16 v3, -0x3eb00000    # -13.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getEncryptedCasesCount()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getMaxEncryptedCasesInInventory()I

    move-result v2

    if-lt v1, v2, :cond_37

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v2, 0x43bc0000    # 376.0f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x444b0000    # 812.0f

    const/high16 v3, -0x3d660000    # -77.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v2, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$10;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$10;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "max_encrypted_cases_warning"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-exclamation-triangle"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto/16 :goto_21

    :cond_21
    const/4 v5, 0x0

    const v2, 0x44188000    # 610.0f

    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v4, 0x42500000    # 52.0f

    if-eqz v3, :cond_26

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "requirements"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v6, 0x3e8f5c29    # 0.28f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, 0x43a50000    # 330.0f

    invoke-virtual {v3, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v2, 0x44070000    # 540.0f

    const/4 v3, 0x0

    :goto_13
    iget-object v6, v1, Lcom/prineside/tdi2/BasicLevel;->openRequirements:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v7, :cond_26

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/Requirement;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v8, 0x44598000    # 870.0f

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43a50000    # 330.0f

    invoke-virtual {v7, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e0f5c29    # 0.14f

    const/4 v10, 0x0

    invoke-direct {v8, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/Requirement;->getIconTextureName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v7, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43aa0000    # 340.0f

    const/high16 v9, 0x41200000    # 10.0f

    add-float v11, v2, v9

    invoke-virtual {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Requirement;->getTitle(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v9, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v9, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43bf0000    # 382.0f

    invoke-virtual {v9, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v6}, Lcom/prineside/tdi2/Requirement;->getFormattedValue()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_22

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v13, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v9, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v8, 0x446c0000    # 944.0f

    invoke-virtual {v9, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x43200000    # 160.0f

    invoke-virtual {v9, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v8, 0x10

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_22
    invoke-virtual {v6}, Lcom/prineside/tdi2/Requirement;->isSatisfied()Z

    move-result v8

    if-eqz v8, :cond_23

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-check"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_14

    :cond_23
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-times"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_14
    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v8, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x448c0000    # 1120.0f

    invoke-virtual {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v8, v6, Lcom/prineside/tdi2/Requirement;->type:Lcom/prineside/tdi2/enums/RequirementType;

    sget-object v9, Lcom/prineside/tdi2/enums/RequirementType;->STARS:Lcom/prineside/tdi2/enums/RequirementType;

    if-eq v8, v9, :cond_24

    sget-object v9, Lcom/prineside/tdi2/enums/RequirementType;->OPENED_LEVEL:Lcom/prineside/tdi2/enums/RequirementType;

    if-eq v8, v9, :cond_24

    sget-object v9, Lcom/prineside/tdi2/enums/RequirementType;->RESEARCH:Lcom/prineside/tdi2/enums/RequirementType;

    if-ne v8, v9, :cond_25

    :cond_24
    new-instance v8, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;

    new-instance v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;

    invoke-direct {v9, v0, v6}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$11;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/Requirement;)V

    const/4 v6, 0x0

    invoke-direct {v8, v0, v9, v6}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Ljava/lang/Runnable;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V

    const/high16 v6, 0x44960000    # 1200.0f

    invoke-virtual {v8, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_25
    const/high16 v6, 0x42600000    # 56.0f

    sub-float/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    :cond_26
    const/4 v7, 0x1

    iget v3, v1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-lez v3, :cond_27

    :goto_15
    const/4 v3, 0x1

    goto :goto_17

    :cond_27
    const/4 v3, 0x0

    :goto_16
    iget-object v6, v1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    array-length v8, v6

    if-ge v3, v8, :cond_29

    aget v6, v6, v3

    if-lez v6, :cond_28

    goto :goto_15

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_29
    const/4 v3, 0x0

    :goto_17
    if-eqz v3, :cond_35

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "price"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v6, 0x3e8f5c29    # 0.28f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v8, v8, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, 0x43a50000    # 330.0f

    invoke-virtual {v3, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v3, 0x428c0000    # 70.0f

    sub-float/2addr v2, v3

    const/4 v5, 0x1

    const/4 v11, 0x0

    :goto_18
    iget-object v3, v1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    array-length v7, v3

    const/high16 v8, 0x43a00000    # 320.0f

    if-ge v11, v7, :cond_30

    aget v3, v3, v11

    if-gtz v3, :cond_2a

    goto/16 :goto_1c

    :cond_2a
    if-eqz v5, :cond_2b

    const/high16 v3, 0x43a50000    # 330.0f

    goto :goto_19

    :cond_2b
    const v3, 0x443fc000    # 767.0f

    :goto_19
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v9, 0x43d88000    # 433.0f

    invoke-virtual {v7, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x3e0f5c29    # 0.14f

    const/4 v13, 0x0

    invoke-direct {v9, v13, v13, v13, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v9, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v10, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    sget-object v10, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    aget-object v13, v10, v11

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v7, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x41200000    # 10.0f

    add-float v13, v3, v9

    add-float v14, v2, v9

    invoke-virtual {v7, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    aget-object v13, v10, v11

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/ResourceManager;->getName(Lcom/prineside/tdi2/enums/ResourceType;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x15

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    aget-object v6, v10, v11

    invoke-virtual {v15, v6}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-direct {v13, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    add-float v6, v3, v4

    invoke-virtual {v7, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v7, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    aget-object v7, v10, v11

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v6

    iget-object v7, v1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    aget v7, v7, v11

    if-le v6, v7, :cond_2c

    move v6, v7

    :cond_2c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v13, v6

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    aget v6, v6, v11

    int-to-long v13, v6

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v7, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v6, 0x10

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    if-eqz v5, :cond_2d

    add-float/2addr v3, v8

    invoke-virtual {v7, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1a

    :cond_2d
    add-float/2addr v3, v8

    const/high16 v6, 0x41e00000    # 28.0f

    sub-float/2addr v3, v6

    invoke-virtual {v7, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_1a
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    aget-object v6, v10, v11

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v3

    iget-object v6, v1, Lcom/prineside/tdi2/BasicLevel;->priceInResources:[I

    aget v6, v6, v11

    if-ge v3, v6, :cond_2e

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1b

    :cond_2e
    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1b
    iget-object v3, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    xor-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_2f

    const/high16 v5, 0x42600000    # 56.0f

    sub-float/2addr v2, v5

    :cond_2f
    move v5, v3

    :goto_1c
    add-int/lit8 v11, v11, 0x1

    const/high16 v6, 0x43a50000    # 330.0f

    goto/16 :goto_18

    :cond_30
    iget v3, v1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-lez v3, :cond_35

    if-eqz v5, :cond_31

    const/high16 v3, 0x43a50000    # 330.0f

    goto :goto_1d

    :cond_31
    const v3, 0x443fc000    # 767.0f

    :goto_1d
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v7, 0x43d88000    # 433.0f

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e0f5c29    # 0.14f

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v7, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-money"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x41200000    # 10.0f

    add-float v11, v3, v7

    add-float/2addr v7, v2

    invoke-virtual {v6, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "green_papers_short"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    add-float v7, v3, v4

    invoke-virtual {v6, v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v6

    iget v7, v1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-le v6, v7, :cond_32

    move v6, v7

    :cond_32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v9, v6

    invoke-static {v9, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    int-to-long v9, v6

    invoke-static {v9, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v7, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v4, 0x10

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    if-eqz v5, :cond_33

    add-float/2addr v3, v8

    invoke-virtual {v7, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1e

    :cond_33
    add-float/2addr v3, v8

    const/high16 v4, 0x41e00000    # 28.0f

    sub-float/2addr v3, v4

    invoke-virtual {v7, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_1e
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ProgressManager;->getGreenPapers()I

    move-result v2

    iget v3, v1, Lcom/prineside/tdi2/BasicLevel;->priceInMoney:I

    if-ge v2, v3, :cond_34

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1f

    :cond_34
    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1f
    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_35
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->canBePurchased(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v2

    if-eqz v2, :cond_36

    new-instance v2, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "unlock"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    new-instance v9, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;

    invoke-direct {v9, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$12;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    const-string v5, "icon-lock"

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;)V

    goto :goto_20

    :cond_36
    new-instance v2, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "unlock"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    new-instance v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$13;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$13;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    const-string v12, "icon-lock"

    move-object v10, v2

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;)V

    :goto_20
    const/high16 v1, 0x444b0000    # 812.0f

    const/high16 v3, -0x3eb00000    # -13.0f

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_37
    :goto_21
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$14;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$14;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    const-string v4, ""

    invoke-direct {v1, v4, v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "ui-game-over-prestige-button"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42e20000    # 113.0f

    const/high16 v7, 0x42dc0000    # 110.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-crown"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    const/high16 v4, 0x41f80000    # 31.0f

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x42800000    # 64.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x42e20000    # 113.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x44960000    # 1200.0f

    const/high16 v3, 0x43660000    # 230.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_38
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41b00000    # 22.0f
        0x41200000    # 10.0f
        0x443b0000    # 748.0f
        0x44960000    # 1200.0f
        0x443e0000    # 760.0f
        0x44960000    # 1200.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41300000    # 11.0f
        0x0
        0x429a0000    # 77.0f
        0x44018000    # 518.0f
        0x42a40000    # 82.0f
        0x43f48000    # 489.0f
        0x0
    .end array-data
.end method

.method public final p(ZZ)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->q(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0x66

    const-string v5, "LevelSelectScreen levelMenu"

    if-eqz p2, :cond_3

    const p2, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz p1, :cond_2

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    sget-object v8, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    new-instance v9, Lcom/prineside/tdi2/screens/r;

    invoke-direct {v9, p0}, Lcom/prineside/tdi2/screens/r;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-virtual {v7, v5, v8, v4, v9}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/Runnable;)V

    iget-object v4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    invoke-static {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v4

    mul-float v0, v0, p2

    invoke-static {v2, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p2

    invoke-static {v1, v4, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    mul-float v0, v0, p2

    invoke-static {v3, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p2

    new-instance v0, Lcom/prineside/tdi2/screens/s;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/s;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto/16 :goto_1

    :cond_3
    const p2, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    sget-object v7, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    new-instance v8, Lcom/prineside/tdi2/screens/t;

    invoke-direct {v8, p0}, Lcom/prineside/tdi2/screens/t;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-virtual {v6, v5, v7, v4, v8}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/Runnable;)V

    iget-object v4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v4}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v3}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v4

    invoke-static {v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v5

    const v6, 0x3dcccccd    # 0.1f

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v6

    mul-float v0, v0, p2

    sget-object p2, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-static {v1, v2, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v6

    invoke-static {v2, v1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p2

    invoke-static {v4, v5, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->o(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v4

    neg-float v4, v4

    mul-float v0, v0, p2

    sget-object p2, Lcom/badlogic/gdx/math/Interpolation;->swingIn:Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    invoke-static {v2, v4, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v4

    neg-float v4, v4

    invoke-static {v4, v2, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p2

    new-instance v0, Lcom/prineside/tdi2/screens/u;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/screens/u;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;)V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_1
    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->a:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->r(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V

    :cond_5
    return-void
.end method
