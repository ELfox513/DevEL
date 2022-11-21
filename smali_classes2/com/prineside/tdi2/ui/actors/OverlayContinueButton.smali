.class public Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# instance fields
.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public N:Z

.field public O:Z

.field public P:Lcom/badlogic/gdx/graphics/Color;

.field public Q:Lcom/badlogic/gdx/graphics/Color;

.field public R:Lcom/badlogic/gdx/graphics/Color;

.field public label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->P:Lcom/badlogic/gdx/graphics/Color;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->Q:Lcom/badlogic/gdx/graphics/Color;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->R:Lcom/badlogic/gdx/graphics/Color;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 p3, 0x43cc0000    # 408.0f

    const/high16 p4, 0x42fe0000    # 127.0f

    invoke-virtual {p0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "ui-level-selection-overlay-button"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p5, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p5, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance p4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v0, 0x1e

    invoke-virtual {p5, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object p5

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, p5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p3, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const p1, 0x43988000    # 305.0f

    const/high16 p4, 0x41a00000    # 20.0f

    invoke-virtual {p3, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 p3, 0x0

    const/high16 p4, 0x42340000    # 45.0f

    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 p3, 0x14

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 p2, 0x42800000    # 64.0f

    invoke-virtual {p1, p2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const p2, 0x439c8000    # 313.0f

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton$1;

    invoke-direct {p1, p0, p6}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->s()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->N:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->s()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->O:Z

    return p1
.end method


# virtual methods
.method public final s()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->Q:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->R:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/OverlayContinueButton;->P:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method
