.class public Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public c:Lcom/prineside/tdi2/ui/actors/ItemCell;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0xcb

    const-string v3, "ItemDescriptionDialog main"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v2, 0x43f3c000    # 487.5f

    const/high16 v3, 0x42ed0000    # 118.5f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const v2, 0x4473c000    # 975.0f

    const/high16 v3, 0x436d0000    # 237.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x0

    const v4, 0x3e8f5c29    # 0.28f

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v3, 0x8

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-direct {v1, v2, v4}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->c:Lcom/prineside/tdi2/ui/actors/ItemCell;

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->c:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v2, 0x43520000    # 210.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const v2, 0x44228000    # 650.0f

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x41980000    # 19.0f
        0x40c00000    # 6.0f
        0x435c0000    # 220.0f
        0x44718000    # 966.0f
        0x43670000    # 231.0f
        0x4473c000    # 975.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41c80000    # 25.0f
        0x0
        0x43620000    # 226.0f
        0x44700000    # 960.0f
        0x436d0000    # 237.0f
        0x44700000    # 960.0f
        0x41700000    # 15.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    const-string v3, "ItemDescriptionDialog"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->removeCaller(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v3, 0x3d8f5c29    # 0.07f

    mul-float v3, v3, v0

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleY()F

    move-result v4

    neg-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float v0, v0, v5

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingIn:Lcom/badlogic/gdx/math/Interpolation$SwingIn;

    invoke-static {v1, v4, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getScaleX()F

    move-result v4

    neg-float v4, v4

    invoke-static {v4, v1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/ui/shared/n;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/n;-><init>(Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;)V

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public show(Lcom/prineside/tdi2/Item;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->show(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public show(Lcom/prineside/tdi2/Item;I)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->c:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    const v0, 0x44228000    # 650.0f

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p2, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const v1, 0x3f47ae14    # 0.78f

    invoke-virtual {p2, p1, p1, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->darkOverlay:Lcom/prineside/tdi2/ui/shared/DarkOverlay;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget v0, v0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    sub-int/2addr v0, v1

    new-instance v1, Lcom/prineside/tdi2/ui/shared/m;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/m;-><init>(Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;)V

    const-string v2, "ItemDescriptionDialog"

    invoke-virtual {p2, v2, v0, v1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->b:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v3, v3, p2

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    mul-float p2, p2, v4

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-static {p1, v0, p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-static {v0, p1, p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
