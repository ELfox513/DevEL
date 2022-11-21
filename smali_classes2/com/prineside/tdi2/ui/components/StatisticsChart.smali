.class public Lcom/prineside/tdi2/ui/components/StatisticsChart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;
    }
.end annotation


# static fields
.field public static final y:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r:Z

.field public s:Z

.field public t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public x:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->y:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0x68

    const-string v5, "StatisticsChart"

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v3, 0x5

    new-array v4, v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-array v4, v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-array v4, v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-array v4, v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x42ae0000    # 87.0f

    const/high16 v9, 0x42c00000    # 96.0f

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x42800000    # 64.0f

    const/high16 v10, 0x43320000    # 178.0f

    invoke-virtual {v7, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x1f1f1fff

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v10, 0x8

    new-array v11, v10, [F

    fill-array-data v11, :array_0

    invoke-direct {v7, v8, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v8, 0x41880000    # 17.0f

    const/high16 v11, 0x42940000    # 74.0f

    invoke-virtual {v7, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2b2b2bff

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v13, v10, [F

    fill-array-data v13, :array_1

    invoke-direct {v7, v8, v13}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-statistics"

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v7, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v7, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v15, Lcom/prineside/tdi2/ui/components/StatisticsChart$1;

    invoke-direct {v15, v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart$1;-><init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;)V

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v11, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_STATS_PANE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v11

    const/high16 v15, 0x42580000    # 54.0f

    invoke-direct {v7, v11, v8, v15}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x444e0000    # 824.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x44120000    # 584.0f

    const/high16 v6, 0x43890000    # 274.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x1e1e1eff

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v10, [F

    fill-array-data v6, :array_2

    invoke-direct {v2, v4, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v4, 0x42780000    # 62.0f

    const/high16 v6, 0x437a0000    # 250.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v10, [F

    fill-array-data v6, :array_3

    invoke-direct {v2, v4, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3e0f5c29    # 0.14f

    invoke-direct {v6, v4, v4, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v8, v10, [F

    fill-array-data v8, :array_4

    invoke-direct {v2, v6, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "gradient-left"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v11, 0x43280000    # 168.0f

    invoke-virtual {v2, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v4, v4, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v7, v10, [F

    fill-array-data v7, :array_5

    invoke-direct {v2, v6, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual {v2, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v6, 0x438f0000    # 286.0f

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42d80000    # 108.0f

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-clock"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v8, v8, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    const-string v14, ""

    invoke-direct {v6, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v8, v8, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v7, 0x42700000    # 60.0f

    invoke-virtual {v2, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v8, 0x0

    :goto_0
    const-string v9, "icon-triangle-top"

    const/16 v11, 0x15

    if-ge v8, v3, :cond_1

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const v3, 0x43de8000    # 445.0f

    invoke-virtual {v15, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43100000    # 144.0f

    int-to-float v5, v8

    mul-float v5, v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {v15, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v7, "Title"

    invoke-direct {v5, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v5, v3, v8

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v7, "1,23K"

    invoke-direct {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v4, v3, v8

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v4, v3, v8

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v3, v3, v8

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v7, "999K"

    invoke-direct {v4, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v4, v3, v8

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x42960000    # 75.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x42700000    # 60.0f

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/components/StatisticsChart$2;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/components/StatisticsChart$2;-><init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;)V

    invoke-direct {v2, v14, v3, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v6, v10, [F

    fill-array-data v6, :array_6

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/high16 v18, 0x41b80000    # 23.0f

    const/high16 v19, 0x41500000    # 13.0f

    const/high16 v20, 0x42b00000    # 88.0f

    const/high16 v21, 0x42300000    # 44.0f

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x1e5270ff

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x184159ff

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x256488ff

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x42540000    # 53.0f

    const/high16 v19, 0x41a00000    # 20.0f

    const/high16 v20, 0x42000000    # 32.0f

    const/high16 v21, 0x42000000    # 32.0f

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43c50000    # 394.0f

    const/high16 v4, -0x3eb00000    # -13.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_STATS_PANE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v4

    const/high16 v5, 0x43040000    # 132.0f

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-direct {v3, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x434e0000    # 206.0f

    const/high16 v4, 0x42940000    # 74.0f

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x43ff0000    # 510.0f

    const/high16 v4, 0x423c0000    # 47.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_STATISTICS_CHART_VISIBLE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x438a0000    # 276.0f

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->r:Z

    :goto_1
    sget-object v2, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->SCORE:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setTabType(Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->update()V

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    new-instance v3, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart$3;-><init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/StatisticsSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v3, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart$4;-><init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x40400000    # 3.0f
        0x41b00000    # 22.0f
        0x42340000    # 45.0f
        0x41b00000    # 22.0f
        0x42400000    # 48.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40c00000    # 6.0f
        0x40400000    # 3.0f
        0x0
        0x429c0000    # 78.0f
        0x42ae0000    # 87.0f
        0x42a00000    # 80.0f
        0x42a00000    # 80.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x40c00000    # 6.0f
        0x41c00000    # 24.0f
        0x43bd0000    # 378.0f
        0x41c00000    # 24.0f
        0x43c08000    # 385.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x41100000    # 9.0f
        0x0
        0x0
        0x434d0000    # 205.0f
        0x44008000    # 514.0f
        0x43490000    # 201.0f
        0x43fc8000    # 505.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_4
    .array-data 4
        0x40000000    # 2.0f
        0x0
        0x0
        0x42100000    # 36.0f
        0x43f00000    # 480.0f
        0x42100000    # 36.0f
        0x43f00000    # 480.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x40000000    # 2.0f
        0x0
        0x0
        0x42100000    # 36.0f
        0x43f00000    # 480.0f
        0x42100000    # 36.0f
        0x43f00000    # 480.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x0
        0x422c0000    # 43.0f
        0x42b00000    # 88.0f
        0x42300000    # 44.0f
        0x42ac0000    # 86.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/StatisticsChart;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->s:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/StatisticsChart;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->s:Z

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/StatisticsChart;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->g()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public draw(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->update()V

    return-void
.end method

.method public final e(IJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v0, v0, p1

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v0, v0, p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-triangle-top"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v0, v0, p1

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v0, v0, p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-triangle-bottom"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object p1, v0, p1

    long-to-double p2, p2

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final f(ILjava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object p3, p3, p1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object p3, p3, p1

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object p3, p3, p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-triangle-top"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object p3, p3, p1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object p3, p3, p1

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object p3, p3, p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-triangle-bottom"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object p1, p3, p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public finalFadeOut()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    mul-float v0, v0, v1

    invoke-static {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public final g()Z
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    const/high16 v1, 0x40100000    # 2.25f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->r:Z

    return v0
.end method

.method public setTabType(Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v3

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    if-eq v3, v1, :cond_c

    sget-object v3, Lcom/prineside/tdi2/ui/components/StatisticsChart$6;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "stats_chart_wave_calls"

    const-string v5, "stats_chart_killed_enemies"

    const/16 v6, 0x18

    const-string v7, "stats_chart_score"

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v3, v11, :cond_4

    if-eq v3, v9, :cond_3

    if-eq v3, v10, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getBestReplay()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "stats_chart_comparison_hint"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v3, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v3, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v11

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v11

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_2
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v9

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "stats_chart_waves"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v10

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v4, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "stats_chart_playing_time"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v2

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "stats_chart_coins"

    invoke-virtual {v7, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v2

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v11

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v9

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "stats_chart_bounties"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v10

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "stats_chart_other"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v2

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v12, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v2

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v11

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v9

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "stats_chart_mining"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v10

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "stats_chart_waves_cleared"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getBestReplay()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v3

    :goto_2
    if-ge v2, v10, :cond_b

    sget-object v4, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->values:[Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    aget-object v4, v4, v2

    if-nez v3, :cond_5

    sget-object v5, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->INFO:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    if-ne v4, v5, :cond_5

    const/4 v7, 0x3

    goto/16 :goto_6

    :cond_5
    const/high16 v5, 0x430e0000    # 142.0f

    const/high16 v6, 0x41200000    # 10.0f

    const/16 v7, 0x8

    const/high16 v8, 0x42880000    # 68.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_6

    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x2b2b2bff

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v13, v14, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    neg-int v7, v2

    int-to-float v7, v7

    mul-float v7, v7, v12

    const/high16 v14, 0x41000000    # 8.0f

    sub-float/2addr v7, v14

    int-to-float v14, v2

    mul-float v14, v14, v8

    sub-float/2addr v5, v14

    invoke-virtual {v13, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_3

    :cond_6
    new-instance v13, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x3e570a3d    # 0.21f

    const/4 v10, 0x0

    invoke-direct {v14, v10, v10, v10, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-direct {v13, v14, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    int-to-float v7, v2

    mul-float v10, v7, v12

    sub-float v10, v6, v10

    mul-float v7, v7, v8

    sub-float/2addr v5, v7

    invoke-virtual {v13, v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_3
    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/StatisticsChart$5;

    invoke-direct {v5, v0, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart$5;-><init>(Lcom/prineside/tdi2/ui/components/StatisticsChart;Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;)V

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    sget-object v5, Lcom/prineside/tdi2/ui/components/StatisticsChart$6;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    if-eq v5, v11, :cond_9

    if-eq v5, v9, :cond_8

    const/4 v7, 0x3

    if-eq v5, v7, :cond_7

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "blank"

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_4

    :cond_7
    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-info"

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_4

    :cond_8
    const/4 v7, 0x3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-coin"

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_4

    :cond_9
    const/4 v7, 0x3

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-star"

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_4
    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v5, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x43140000    # 148.0f

    const/high16 v13, 0x41900000    # 18.0f

    if-ne v1, v4, :cond_a

    int-to-float v4, v2

    mul-float v12, v12, v4

    sub-float/2addr v13, v12

    sub-float/2addr v13, v6

    mul-float v4, v4, v8

    sub-float/2addr v10, v4

    invoke-virtual {v5, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_5

    :cond_a
    int-to-float v4, v2

    mul-float v12, v12, v4

    sub-float/2addr v13, v12

    mul-float v4, v4, v8

    sub-float/2addr v10, v4

    invoke-virtual {v5, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x1e5270ff

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_5
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x3

    goto/16 :goto_2

    :cond_b
    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->update()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x42700000    # 60.0f
        0x42940000    # 74.0f
        0x42700000    # 60.0f
        0x42900000    # 72.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x40000000    # 2.0f
        0x42700000    # 60.0f
        0x42800000    # 64.0f
        0x42700000    # 60.0f
        0x42780000    # 62.0f
        0x0
    .end array-data
.end method

.method public setVisible(Z)V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_STATISTICS_CHART_VISIBLE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    if-eqz p1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/high16 v2, 0x42800000    # 64.0f

    const v3, 0x3e19999a    # 0.15f

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    mul-float v0, v0, v3

    invoke-static {v1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x43890000    # 274.0f

    invoke-static {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setOffscreen(Z)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v5, 0x438a0000    # 276.0f

    mul-float v0, v0, v3

    invoke-static {v1, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x43320000    # 178.0f

    invoke-static {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->r:Z

    return-void
.end method

.method public update()V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentReplayChart()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->v:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->w:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->b:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    sget-object v4, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->SCORE:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentReplayChartValues()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    move-result-object v2

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    add-long/2addr v9, v11

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    add-long/2addr v9, v11

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    add-long/2addr v9, v11

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v11, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v11, v11, v4

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v1

    long-to-double v9, v9

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    long-to-double v9, v9

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v6

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    long-to-double v9, v9

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v5

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    long-to-double v9, v9

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v7

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    long-to-double v9, v9

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getBestReplay()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, v8

    if-ltz v3, :cond_9

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    aget-object v0, v0, v3

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    if-le v4, v3, :cond_3

    aget-object v2, v2, v3

    goto :goto_2

    :cond_3
    sub-int/2addr v4, v8

    aget-object v2, v2, v4

    :goto_2
    iget-wide v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    iget-wide v9, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    add-long/2addr v3, v9

    iget-wide v9, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    add-long/2addr v3, v9

    iget-wide v9, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    add-long/2addr v3, v9

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    add-long/2addr v9, v11

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    add-long/2addr v9, v11

    iget-wide v11, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    add-long/2addr v9, v11

    sub-long/2addr v3, v9

    invoke-virtual {p0, v1, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget-wide v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    iget-wide v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    sub-long/2addr v3, v9

    invoke-virtual {p0, v8, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget-wide v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    iget-wide v8, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    sub-long/2addr v3, v8

    invoke-virtual {p0, v6, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget-wide v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    iget-wide v8, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    sub-long/2addr v3, v8

    invoke-virtual {p0, v5, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget-wide v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    iget-wide v5, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    sub-long/2addr v3, v5

    invoke-virtual {p0, v7, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    goto/16 :goto_5

    :cond_4
    sget-object v4, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->COINS:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentReplayChartValues()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    move-result-object v2

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    iget v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    add-int/2addr v4, v9

    iget v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    add-int/2addr v4, v9

    iget v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    add-int/2addr v4, v9

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v3, :cond_5

    iget-object v10, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v10, v10, v9

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v1

    int-to-double v9, v4

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    int-to-double v9, v4

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v6

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    int-to-double v9, v4

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v5

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    int-to-double v9, v4

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v7

    iget v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    int-to-double v9, v2

    invoke-static {v9, v10, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getBestReplay()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, v8

    if-ltz v3, :cond_9

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    aget-object v0, v0, v3

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    if-le v4, v3, :cond_6

    aget-object v2, v2, v3

    goto :goto_4

    :cond_6
    sub-int/2addr v4, v8

    aget-object v2, v2, v4

    :goto_4
    iget v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    iget v4, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    iget v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    add-int/2addr v4, v9

    iget v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    add-int/2addr v4, v9

    iget v9, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    add-int/2addr v4, v9

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p0, v1, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p0, v8, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p0, v6, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    iget v4, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p0, v5, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    iget v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v7, v2, v3}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    goto/16 :goto_5

    :cond_7
    sget-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;->INFO:Lcom/prineside/tdi2/ui/components/StatisticsChart$TabType;

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getBestReplay()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v2, v2, v6

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "stats_chart_waves"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v2, v2, v5

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "stats_chart_score"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->t:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v2, v2, v7

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "stats_chart_playing_time"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    sget v3, Lcom/prineside/tdi2/Config;->REPLAY_CHARTS_INTERVAL:I

    mul-int v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRate()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v6

    iget v4, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v5

    iget-wide v9, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-static {v9, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v7

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->u:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, v3, v8

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/WaveSystem;->getCompletedWavesCount()I

    move-result v3

    iget v4, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {p0, v6, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v3

    iget-wide v9, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    sub-long/2addr v3, v9

    invoke-virtual {p0, v5, v3, v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->e(IJ)V

    sget-object v0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->y:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v3, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iget v4, v4, Lcom/prineside/tdi2/systems/StatisticsSystem;->replayChartFrameCounter:I

    int-to-float v4, v4

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRate()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v3, v2

    if-gez v3, :cond_8

    neg-int v2, v3

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0, v7, v0, v1}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->f(ILjava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_8
    invoke-static {v3}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0, v7, v0, v8}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->f(ILjava/lang/CharSequence;Z)V

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/StatisticsChart;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iget v3, v3, Lcom/prineside/tdi2/systems/StatisticsSystem;->replayChartFrameCounter:I

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRate()I

    move-result v2

    div-int/2addr v3, v2

    invoke-static {v3, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
