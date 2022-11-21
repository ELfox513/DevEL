.class public Lcom/prineside/tdi2/ui/actors/SideMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;,
        Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public C:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public final D:Ljava/lang/Runnable;

.field public final E:Ljava/lang/Runnable;

.field public final F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public sideShadow:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public t:F

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public w:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public x:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final y:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;",
            ">;"
        }
    .end annotation
.end field

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x69

    const-string v4, "SideMenu"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->y:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x44390000    # 740.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    const v6, 0x3e0f5c29    # 0.14f

    invoke-direct {v4, v5, v5, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v6, 0x8

    new-array v7, v6, [F

    const/high16 v8, 0x40800000    # 4.0f

    aput v8, v7, v3

    aput v5, v7, v2

    const/4 v8, 0x2

    aput v5, v7, v8

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x3

    aput v8, v7, v9

    const/4 v8, 0x4

    const/high16 v9, 0x40e00000    # 7.0f

    aput v9, v7, v8

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v10, 0x5

    aput v8, v7, v10

    const/4 v8, 0x6

    aput v9, v7, v8

    const/4 v8, 0x7

    aput v5, v7, v8

    invoke-direct {v1, v4, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->sideShadow:Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/high16 v4, 0x43050000    # 133.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->sideShadow:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "ui-tile-menu-toggle-button"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, 0x43440000    # 196.0f

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x44160000    # 600.0f

    invoke-virtual {v1, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x430c0000    # 140.0f

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v10, 0x43900000    # 288.0f

    const/high16 v11, 0x432d0000    # 173.0f

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v10, -0x3cec0000    # -148.0f

    invoke-virtual {v1, v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v12, Lcom/prineside/tdi2/ui/actors/SideMenu$1;

    invoke-direct {v12, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$1;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-tile-menu-side-tooltip"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v12, 0x41b00000    # 22.0f

    invoke-virtual {v1, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v12, 0x43850000    # 266.0f

    invoke-virtual {v1, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x2b2b2bff

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-direct {v1, v12, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->w:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-info-circle"

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {v1, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v12, -0x3df00000    # -36.0f

    invoke-virtual {v1, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v15, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, "Side tooltip"

    invoke-direct {v1, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x436e0000    # 238.0f

    invoke-virtual {v1, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-triangle-right-hollow"

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-triangle-left-hollow"

    invoke-virtual {v1, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    new-instance v4, Lcom/prineside/tdi2/ui/actors/SideMenu$2;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$2;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    sget-object v17, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v1

    move-object v11, v15

    move-object v15, v4

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const-string v4, "side_menu_toggle_button"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v1, v4, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v11, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_TILE_MENU:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v8

    const/high16 v11, 0x41400000    # 12.0f

    invoke-direct {v4, v8, v6, v11}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/SideMenu$3;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$3;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/SideMenu$4;

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$4;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->D:Ljava/lang/Runnable;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/SideMenu$5;

    invoke-direct {v1, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$5;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setVisible(Z)V

    iput-boolean v2, v0, Lcom/prineside/tdi2/ui/actors/SideMenu;->A:Z

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setOffscreen(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/actors/SideMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->A:Z

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/actors/SideMenu;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/actors/SideMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->f()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOffscreenBackground()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x171717bb

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x44160000    # 600.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "gradient-left"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x41200000    # 10.0f

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v1, 0x3e0f5c29    # 0.14f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    return-void
.end method

.method public createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;-><init>(Lcom/prineside/tdi2/ui/actors/SideMenu;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->y:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-boolean v1, v1, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->M:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setVisible(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setVisible(Z)V

    return-void
.end method

.method public finalFadeOut()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setOffscreen(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public hideSideTooltip()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public isOffscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->A:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->z:Z

    return v0
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffscreen(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->A:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->A:Z

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;

    invoke-interface {v3}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;->offscreenStartingToChange()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager;->getScreenSafeMargin()I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v3, 0x44160000    # 600.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    int-to-float v4, p1

    add-float/2addr v4, v3

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v4, v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->D:Ljava/lang/Runnable;

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-static {p1, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {p1, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    int-to-float v1, p1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->D:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    goto/16 :goto_5

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->E:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v2, v2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-static {v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->r:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;->offscreenStartingToChange()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_4
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;->offscreenChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_6
    :goto_5
    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->z:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->z:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->F:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;->visibilityChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public showSideTooltip(Ljava/lang/CharSequence;F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->textEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->t:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    const/high16 p1, 0x432d0000    # 173.0f

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getPrefHeight()F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    add-float/2addr v0, v1

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x432d0000    # 173.0f

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v3, p2, v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    sub-float p1, v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->w:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->getVertexPositions()[F

    move-result-object p1

    const/4 v1, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    aput v3, p1, v1

    aput v3, p1, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v1, 0x3

    sub-float v3, v0, v3

    aput v3, p1, v1

    const/4 v1, 0x4

    const/high16 v3, 0x43850000    # 266.0f

    aput v3, p1, v1

    const/4 v1, 0x5

    aput v0, p1, v1

    const/4 v1, 0x6

    aput v3, p1, v1

    const/4 v1, 0x7

    aput v2, p1, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->w:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexPositions([F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x436e0000    # 238.0f

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, -0x3df00000    # -36.0f

    const/high16 v2, 0x42200000    # 40.0f

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/SideMenu;->t:F

    return-void
.end method
