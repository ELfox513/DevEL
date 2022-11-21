.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EyeButton"
.end annotation


# instance fields
.field public M:Z

.field public N:Z

.field public O:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public final synthetic P:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Ljava/lang/Runnable;)V
    .locals 4

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->P:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v0, 0x42b80000    # 92.0f

    const/high16 v1, 0x42500000    # 52.0f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f0f5c29    # 0.56f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v2, 0x8

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-direct {v1, v0, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iput-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->O:Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->O:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-eye"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->s()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3ef00000    # -9.0f
        0x0
        0x42180000    # 38.0f
        0x42a80000    # 84.0f
        0x42500000    # 52.0f
        0x42900000    # 72.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x42500000    # 52.0f
        0x42a80000    # 84.0f
        0x42500000    # 52.0f
        0x42900000    # 72.0f
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Ljava/lang/Runnable;Lcom/prineside/tdi2/screens/LevelSelectScreen$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->M:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->s()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->N:Z

    return p1
.end method


# virtual methods
.method public final s()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->O:Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->O:Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$EyeButton;->O:Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method
