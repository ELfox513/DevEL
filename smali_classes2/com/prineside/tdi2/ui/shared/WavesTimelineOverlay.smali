.class public Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public d:Z

.field public e:Ljava/lang/Runnable;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0xd8

    const-string v3, "WavesTimelineOverlay tint"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v3, 0xd9

    const-string v4, "WavesTimelineOverlay main"

    invoke-virtual {v2, v1, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v3, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f47ae14    # 0.78f

    iput v4, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$1;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v4, 0x441d8000    # 630.0f

    const/high16 v5, 0x43be0000    # 380.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const v7, 0x449d8000    # 1260.0f

    const/high16 v8, 0x443e0000    # 760.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->e:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->e:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    return-void
.end method

.method public setConfiguration(Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v1, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyConfigs:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_1

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v5, v5, v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :cond_2
    int-to-float v5, v4

    const/high16 v6, 0x42480000    # 50.0f

    mul-float v5, v5, v6

    const/high16 v7, 0x43040000    # 132.0f

    add-float/2addr v7, v5

    const/high16 v8, 0x41f00000    # 30.0f

    add-float/2addr v7, v8

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v10, 0x441d8000    # 630.0f

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v12, v7, v11

    invoke-virtual {v9, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v10, 0x449d8000    # 1260.0f

    invoke-virtual {v9, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v12, 0x443e0000    # 760.0f

    sub-float/2addr v12, v7

    mul-float v12, v12, v11

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v9, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x2f2f2fff

    invoke-direct {v12, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v15, 0x8

    new-array v11, v15, [F

    aput v13, v11, v2

    aput v13, v11, v3

    const/16 v17, 0x2

    aput v13, v11, v17

    const/16 v17, 0x3

    aput v7, v11, v17

    const/16 v17, 0x4

    aput v10, v11, v17

    const/16 v17, 0x5

    const/high16 v18, 0x41400000    # 12.0f

    sub-float v18, v7, v18

    aput v18, v11, v17

    const/16 v17, 0x6

    aput v10, v11, v17

    const/16 v17, 0x7

    const/high16 v18, 0x41a80000    # 21.0f

    aput v18, v11, v17

    invoke-direct {v9, v12, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "enemies_by_wave_from_all_portals"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x1e

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    sget-object v15, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v9, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42200000    # 40.0f

    const/high16 v11, 0x42980000    # 76.0f

    sub-float/2addr v7, v11

    invoke-virtual {v9, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43960000    # 300.0f

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-virtual {v9, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v6, 0x42040000    # 33.0f

    add-float v7, v5, v6

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v11, 0x459f4000    # 5096.0f

    invoke-virtual {v9, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v12, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v15, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v15, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v10, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v10, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v15, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v10, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v15, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v10, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v10, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v15, v7, v6

    invoke-virtual {v10, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v15, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42c00000    # 96.0f

    invoke-virtual {v9, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v2, 0x459c4000    # 5000.0f

    invoke-virtual {v9, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x363636ff

    invoke-direct {v2, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v2, 0x1

    :goto_1
    const/16 v9, 0x64

    if-gt v2, v9, :cond_3

    add-int/lit8 v9, v2, -0x1

    mul-int/lit8 v9, v9, 0x32

    int-to-float v9, v9

    add-float/2addr v9, v11

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v6, v1, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->startWave:I

    add-int/2addr v6, v2

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x15

    invoke-virtual {v14, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v11, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v11, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v3, 0x42040000    # 33.0f

    const/high16 v6, 0x42400000    # 48.0f

    invoke-virtual {v11, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f0f5c29    # 0.56f

    invoke-virtual {v11, v13, v13, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual {v11, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    add-float/2addr v9, v6

    neg-float v6, v7

    add-float/2addr v6, v3

    invoke-virtual {v11, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x2f2f2fff

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    const/high16 v6, 0x42040000    # 33.0f

    const/high16 v11, 0x42c00000    # 96.0f

    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v6, v3

    new-array v6, v6, [I

    array-length v7, v3

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_4

    aget-object v10, v3, v9

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, -0x1

    aput v11, v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v1, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyConfigs:Lcom/badlogic/gdx/utils/Array;

    iget v11, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v11, :cond_8

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v10, v10, v7

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v13, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v11, v13, :cond_7

    const/4 v11, 0x1

    add-int/lit8 v13, v4, -0x1

    mul-int/lit8 v13, v13, 0x32

    mul-int/lit8 v11, v9, 0x32

    sub-int/2addr v13, v11

    iget-object v11, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v13, v6, v11

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v14, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x282828ff

    invoke-direct {v11, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const v14, 0x3f0f5c29    # 0.56f

    invoke-virtual {v3, v11, v14}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v14, 0x42ac0000    # 86.0f

    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {v11, v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v13, v13

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v11, 0x8

    new-array v14, v11, [F

    fill-array-data v14, :array_0

    invoke-direct {v0, v14, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    const/high16 v14, 0x42ac0000    # 86.0f

    invoke-virtual {v0, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v14, 0x41200000    # 10.0f

    const/high16 v11, 0x42400000    # 48.0f

    invoke-virtual {v0, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v14, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v11, 0x40e00000    # 7.0f

    add-float/2addr v11, v13

    const/high16 v14, 0x41f00000    # 30.0f

    invoke-virtual {v0, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v0, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v11, 0x459f4000    # 5096.0f

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v0, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x282828ff

    invoke-direct {v14, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v0, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    const/4 v11, 0x1

    if-gt v0, v11, :cond_5

    const/high16 v0, -0x3d400000    # -96.0f

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    :goto_4
    iget v11, v1, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->startWave:I

    add-int/lit8 v14, v11, -0x1

    mul-int/lit8 v14, v14, 0x32

    int-to-float v14, v14

    sub-float/2addr v0, v14

    iget v10, v10, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    const/4 v14, 0x1

    if-ge v10, v14, :cond_6

    const v10, 0x459c4000    # 5000.0f

    goto :goto_5

    :cond_6
    int-to-float v10, v10

    const/high16 v14, 0x42480000    # 50.0f

    mul-float v10, v10, v14

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x32

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_5
    const v11, 0x3f0f5c29    # 0.56f

    iput v11, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sub-float/2addr v10, v0

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v11, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x42c00000    # 96.0f

    add-float/2addr v0, v10

    invoke-virtual {v11, v0, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v0, v0

    new-array v2, v0, [Z

    const/4 v4, 0x1

    :goto_6
    iget-object v7, v1, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay$WavesConfiguration;->enemyGroupsByWave:Lcom/badlogic/gdx/utils/Array;

    iget v9, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v9, :cond_10

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/badlogic/gdx/utils/Array;

    aget-object v7, v7, v4

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v0, :cond_9

    const/4 v10, 0x0

    aput-boolean v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_8
    iget v11, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v11, :cond_f

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/prineside/tdi2/EnemyGroup;

    add-int/lit8 v12, v4, -0x1

    int-to-float v12, v12

    const/high16 v13, 0x42480000    # 50.0f

    mul-float v12, v12, v13

    const/high16 v14, 0x42c00000    # 96.0f

    add-float/2addr v12, v14

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v13, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/EnemyManager;->getMainEnemyType(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v10

    sget-object v13, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v10, v13, :cond_a

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v10, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x282828ff

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const v13, 0x3f0f5c29    # 0.56f

    invoke-virtual {v3, v9, v13}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v18, 0x40000000    # 2.0f

    sub-float v9, v5, v18

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v7, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v11, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    invoke-direct {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v10, 0x41000000    # 8.0f

    sub-float/2addr v12, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    const/high16 v16, 0x42000000    # 32.0f

    sub-float v9, v9, v16

    invoke-virtual {v7, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42800000    # 64.0f

    const/high16 v11, 0x42800000    # 64.0f

    invoke-virtual {v7, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move/from16 v21, v0

    const/high16 v0, 0x42400000    # 48.0f

    const/4 v11, 0x1

    goto/16 :goto_c

    :cond_a
    const v13, 0x3f0f5c29    # 0.56f

    const/high16 v16, 0x42000000    # 32.0f

    const/high16 v18, 0x40000000    # 2.0f

    const/16 v19, 0x0

    iget-object v10, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v6, v10

    if-ltz v10, :cond_e

    iget-object v13, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget-boolean v13, v2, v13

    if-eqz v13, :cond_b

    goto :goto_a

    :cond_b
    iget v13, v11, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    const/high16 v20, 0x3e800000    # 0.25f

    cmpg-float v20, v13, v20

    if-gtz v20, :cond_c

    const-string v13, "icon-density-high"

    const/high16 v20, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_c
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v20

    if-ltz v13, :cond_d

    const-string v13, "icon-density-low"

    goto :goto_9

    :cond_d
    const-string v13, "icon-density-medium"

    :goto_9
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move/from16 v21, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    int-to-float v0, v10

    invoke-virtual {v14, v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {v14, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v12, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v10, v11, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x1

    aput-boolean v11, v2, v10

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v21, v0

    const/high16 v0, 0x42400000    # 48.0f

    const/4 v11, 0x1

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v21

    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_f
    move/from16 v21, v0

    const/high16 v0, 0x42400000    # 48.0f

    const/4 v11, 0x1

    const/high16 v16, 0x42000000    # 32.0f

    const/high16 v18, 0x40000000    # 2.0f

    :goto_c
    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v21

    goto/16 :goto_6

    :cond_10
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x0
    .end array-data
.end method

.method public setHideListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/WavesTimelineOverlay;->d:Z

    return-void
.end method
