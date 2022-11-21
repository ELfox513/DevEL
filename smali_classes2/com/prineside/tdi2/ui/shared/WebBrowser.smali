.class public Lcom/prineside/tdi2/ui/shared/WebBrowser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public s:Lcom/prineside/tdi2/ui/actors/WebView;

.field public t:Z

.field public webView:Lcom/prineside/tdi2/ui/actors/WebView;


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x95

    const-string v3, "WebBrowser main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x438

    add-int/lit16 v1, v1, 0x3c0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    int-to-float v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, v4

    const/high16 v6, 0x44020000    # 520.0f

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x44820000    # 1040.0f

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "blank"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x212121ff

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v9, 0x8

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    invoke-direct {v2, v6, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/4 v6, 0x0

    const/high16 v10, -0x3ec00000    # -12.0f

    invoke-virtual {v2, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v11, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v12, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v12, Lcom/prineside/tdi2/ui/shared/WebBrowser$1;

    invoke-direct {v12, p0}, Lcom/prineside/tdi2/ui/shared/WebBrowser$1;-><init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v12, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    const/16 v13, 0x40

    invoke-direct {v7, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-direct {v7, v12, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {v7, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/actors/WebView;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->s:Lcom/prineside/tdi2/ui/actors/WebView;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;

    invoke-direct {v7, p0, v1}, Lcom/prineside/tdi2/ui/shared/WebBrowser$2;-><init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;I)V

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ui/actors/WebView;->addListener(Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/actors/WebView;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->webView:Lcom/prineside/tdi2/ui/actors/WebView;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v9, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->webView:Lcom/prineside/tdi2/ui/actors/WebView;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v9, 0x44700000    # 960.0f

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "loading-icon"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2, v2, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sub-float/2addr v5, v2

    const/high16 v2, 0x43f80000    # 496.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->webView:Lcom/prineside/tdi2/ui/actors/WebView;

    new-instance v5, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;

    invoke-direct {v5, p0}, Lcom/prineside/tdi2/ui/shared/WebBrowser$3;-><init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ui/actors/WebView;->addListener(Lcom/prineside/tdi2/ui/actors/WebView$WebViewListener;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-times"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    new-instance v10, Lcom/prineside/tdi2/ui/shared/WebBrowser$4;

    invoke-direct {v10, p0}, Lcom/prineside/tdi2/ui/shared/WebBrowser$4;-><init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float/2addr v4, v7

    const/high16 v2, 0x447c0000    # 1008.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const-string v2, "web_browser_close_button"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x41400000    # 12.0f
        0x44820000    # 1040.0f
        0x41400000    # 12.0f
        0x44820000    # 1040.0f
        0x41400000    # 12.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x41400000    # 12.0f
        0x44820000    # 1040.0f
        0x41400000    # 12.0f
        0x44820000    # 1040.0f
        0x41400000    # 12.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->g()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/prineside/tdi2/ui/actors/WebView;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->s:Lcom/prineside/tdi2/ui/actors/WebView;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/WebBrowser;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public final g()V
    .locals 3

    const-string v0, "WebBrowser"

    const-string v1, "hideModal"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->g()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "WebBrowser"

    if-eqz p1, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v3, v3, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/prineside/tdi2/ui/shared/b2;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/shared/b2;-><init>(Lcom/prineside/tdi2/ui/shared/WebBrowser;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/WebBrowser;->t:Z

    return-void
.end method
