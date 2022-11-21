.class public Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public q:Lcom/badlogic/gdx/graphics/Color;

.field public r:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x64

    const-string v3, "ScreenBorderGradient"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v3, 0x65

    const-string v5, "ScreenBorderGradient - full screen"

    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->r:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "screen_border_gradient_normal"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iput-object v5, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->q:Lcom/badlogic/gdx/graphics/Color;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/16 v6, 0x9

    new-array v6, v6, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v7, "ui-screen-border-0"

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "ui-screen-border-1"

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "ui-screen-border-2"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const-string v4, "ui-screen-border-3"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v4, 0x4

    const/4 v7, 0x0

    aput-object v7, v6, v4

    const-string v4, "ui-screen-border-5"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v6, v7

    const-string v4, "ui-screen-border-6"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v6, v7

    const-string v4, "ui-screen-border-7"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    const/4 v7, 0x7

    aput-object v4, v6, v7

    const-string v4, "ui-screen-border-8"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v6, v4

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v5, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$1;-><init>(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)V

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->q:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$2;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "blank"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient$2;-><init>(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->d:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public flash(Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3dcccccd    # 0.1f

    mul-float v1, v1, p2

    invoke-static {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->q:Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f666666    # 0.9f

    mul-float p2, p2, v2

    invoke-static {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public fullscreenFlash(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p2

    invoke-static {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->r:Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f733333    # 0.95f

    mul-float p2, p2, v2

    invoke-static {v1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
