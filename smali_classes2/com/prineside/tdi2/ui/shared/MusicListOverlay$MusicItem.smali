.class Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/MusicListOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicItem"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

.field public container:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public hash:I

.field public lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public name:Ljava/lang/String;

.field public nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

.field public thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;Lcom/prineside/tdi2/ui/shared/MusicListOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->getMenuThemeSources()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->sameAs(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/4 v4, 0x4

    if-le v2, v4, :cond_0

    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v0, v0, v1

    iput v4, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    goto :goto_1

    :cond_0
    move-object v2, v0

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v0, v0, v1

    iput v4, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    goto :goto_1

    :cond_1
    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v0, v0, v1

    iput v3, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->requireSave()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->updateUi()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private synthetic d()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->getMenuThemeSources()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->sameAs(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    move-object v2, v0

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v0, v0, v1

    iput v4, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    goto :goto_1

    :cond_0
    move-object v2, v0

    check-cast v2, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v0, v0, v1

    iput v4, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    goto :goto_1

    :cond_1
    check-cast v0, [Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    aget-object v0, v0, v1

    iput v3, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->repeats:I

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->requireSave()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->updateUi()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getBase64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->getBase64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    sget-object v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->BASIC_LEVEL:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->USER_MAP:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getModule()Lcom/prineside/tdi2/ibxm/Module;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getMenuXmSoundTrack()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->type:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    sget-object v2, Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;->BASIC_LEVEL:Lcom/prineside/tdi2/managers/MusicManager$MusicSourceType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/MusicManager$MusicSource;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->isOpened(Lcom/prineside/tdi2/BasicLevel;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public play()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/MusicManager;->playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicListOverlay"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public toggleAsMenuTheme()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/MusicManager;->isMenuMusicSourceEnabled(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/MusicManager;->removeMenuMusicSource(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/MusicManager;->addMenuMusicSource(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->requireSave()V

    return-void
.end method

.method public updateUi()V
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->isAvailable()Z

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string v3, "icon-triangle-right"

    const/16 v4, 0x8

    const-string v5, "settings-toggle-on"

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-thumbs-up"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v2, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v10, 0x43d08000    # 417.0f

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "gradient-left"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x252525ff

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->getLevelName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x15

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v10, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v6, v6, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v11, 0x42600000    # 56.0f

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v13, 0x43a00000    # 320.0f

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->name:Ljava/lang/String;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v15, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    invoke-direct {v2, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v2, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    new-instance v10, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$1;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v11

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v10, 0x42800000    # 64.0f

    const/high16 v13, 0x42500000    # 52.0f

    invoke-virtual {v2, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v15, 0x43e60000    # 460.0f

    invoke-virtual {v2, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v10, v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v2, v14, v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$2;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem$2;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V

    const-string v12, ""

    invoke-direct {v2, v12, v9, v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v9, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v10, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v12, v4, [F

    fill-array-data v12, :array_0

    invoke-direct {v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v9, v10}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x42c80000    # 100.0f

    const/high16 v21, 0x42600000    # 56.0f

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v23

    const/high16 v24, 0x42100000    # 36.0f

    const/high16 v25, 0x41400000    # 12.0f

    const/high16 v26, 0x42000000    # 32.0f

    const/high16 v27, 0x42000000    # 32.0f

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v27}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v9, 0x44070000    # 540.0f

    invoke-virtual {v2, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v9, 0x42f00000    # 120.0f

    invoke-virtual {v2, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v10, 0x44200000    # 640.0f

    invoke-virtual {v2, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->container:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    const-string v10, "x1"

    invoke-direct {v2, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-triangle-bottom"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    new-instance v6, Lcom/prineside/tdi2/ui/shared/k1;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/k1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P200:Lcom/badlogic/gdx/graphics/Color;

    sget-object v23, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x42700000    # 60.0f

    invoke-virtual {v2, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v2, v10, v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v2, v12, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v15, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-triangle-top"

    invoke-virtual {v15, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v19

    new-instance v4, Lcom/prineside/tdi2/ui/shared/l1;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/l1;-><init>(Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;)V

    move-object/from16 v18, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v9

    invoke-direct/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v10, v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v12, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsGroupScrollDependable:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->thumbsUpIcon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget v6, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/MusicManager;->isMusicThumbsUp(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->a:Lcom/prineside/tdi2/ui/shared/MusicListOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/MusicListOverlay;->k(Lcom/prineside/tdi2/ui/shared/MusicListOverlay;)I

    move-result v2

    iget v4, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->hash:I

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-pause"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->playButton:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->nameLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v3, 0x3e8f5c29    # 0.28f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_0
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/MusicManager;->isMenuMusicSourceEnabled(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->source:Lcom/prineside/tdi2/managers/MusicManager$MusicSource;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/MusicManager;->getMenuMusicSourceRepeatCount(Lcom/prineside/tdi2/managers/MusicManager$MusicSource;)I

    move-result v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    if-le v1, v7, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/16 v3, 0x8

    if-ge v1, v3, :cond_4

    const/4 v8, 0x1

    :cond_4
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->menuThemeButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "settings-toggle-off"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->moreRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->lessRepeatsButton:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/MusicListOverlay$MusicItem;->repeatsLabel:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x41000000    # 8.0f
        0x42600000    # 56.0f
        0x42c80000    # 100.0f
        0x42600000    # 56.0f
        0x42c80000    # 100.0f
        0x0
    .end array-data
.end method
