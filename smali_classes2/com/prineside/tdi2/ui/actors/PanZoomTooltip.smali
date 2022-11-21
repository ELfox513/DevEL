.class public Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

.field public final d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

.field public final k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x96

    const-string v3, "PanZoomTooltip"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v5, 0x43c80000    # 400.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AssetManager;->getOverlayBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/utils/InputVoid;

    invoke-direct {v4}, Lcom/prineside/tdi2/utils/InputVoid;-><init>()V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v3, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v7, ""

    invoke-direct {v3, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x42480000    # 50.0f

    invoke-virtual {v3, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-direct {v3, p0, v4}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-direct {v3, p0, v4}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-mouse-wheel"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43180000    # 152.0f

    const/high16 v4, 0x42a40000    # 82.0f

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-triangle-top-hollow"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x43280000    # 168.0f

    const/high16 v5, 0x43320000    # 178.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v6, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/high16 v7, 0x43620000    # 226.0f

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-static {v4, v7, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v7

    const v9, 0x3e99999a    # 0.3f

    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v10

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v5

    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v11

    invoke-static {v7, v10, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v5

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-triangle-bottom-hollow"

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, -0x3e100000    # -30.0f

    invoke-static {v4, v5, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v5

    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-static {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-static {v9}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-static {v5, v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->hide()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->dispose()V

    return-void
.end method

.method public hide()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$7;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$7;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public show()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "screen_pan"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "screen_zoom"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$2;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$2;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    const/high16 v7, 0x43af0000    # 350.0f

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-static {v7, v7, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-static {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v12

    const v13, 0x3e99999a    # 0.3f

    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v14

    invoke-static {v2, v5, v9, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    const v2, 0x441d8000    # 630.0f

    const/high16 v12, 0x437a0000    # 250.0f

    invoke-virtual {v1, v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->d:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    const/16 v14, 0xa

    new-array v15, v14, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    new-instance v14, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$3;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$3;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-static {v14}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v14

    aput-object v14, v15, v9

    const v14, 0x443b8000    # 750.0f

    invoke-static {v14, v7, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v7

    aput-object v7, v15, v5

    invoke-static {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    const/4 v14, 0x2

    aput-object v7, v15, v14

    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v7

    const/16 v16, 0x3

    aput-object v7, v15, v16

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    const/16 v17, 0x4

    aput-object v7, v15, v17

    new-instance v7, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$4;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$4;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v7

    const/16 v18, 0x5

    aput-object v7, v15, v18

    invoke-static {v2, v12, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v15, v7

    invoke-static {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/4 v12, 0x7

    aput-object v2, v15, v12

    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    const/16 v19, 0x8

    aput-object v2, v15, v19

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/16 v20, 0x9

    aput-object v2, v15, v20

    invoke-static {v15}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    const v2, 0x440e8000    # 570.0f

    const/high16 v15, 0x43480000    # 200.0f

    invoke-virtual {v1, v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->k:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$5;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$5;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v7

    aput-object v7, v12, v9

    const/high16 v7, 0x43e10000    # 450.0f

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v7, v9, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v7

    aput-object v7, v12, v5

    invoke-static {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    aput-object v7, v12, v14

    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v7

    aput-object v7, v12, v16

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    aput-object v7, v12, v17

    new-instance v7, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$6;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$6;-><init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v7

    aput-object v7, v12, v18

    invoke-static {v2, v15, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v12, v6

    invoke-static {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v12, v6

    invoke-static {v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    aput-object v2, v12, v19

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    aput-object v2, v12, v20

    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_0
    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-static {v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
