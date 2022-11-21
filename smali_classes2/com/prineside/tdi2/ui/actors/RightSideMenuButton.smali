.class public Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# static fields
.field public static final HEIGHT:F = 108.0f

.field public static final WIDTH:F = 388.0f

.field public static final Y:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public S:Lcom/badlogic/gdx/graphics/Color;

.field public T:Lcom/badlogic/gdx/graphics/Color;

.field public U:Lcom/badlogic/gdx/graphics/Color;

.field public V:Lcom/badlogic/gdx/graphics/Color;

.field public W:Lcom/badlogic/gdx/graphics/Color;

.field public X:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f0f5c29    # 0.56f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Y:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->M:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->N:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->O:Z

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->S:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->T:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->U:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->V:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->W:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->X:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 p3, 0x43c20000    # 388.0f

    const/high16 v0, 0x42d80000    # 108.0f

    invoke-virtual {p0, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "ui-right-menu-button"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {p3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x43f40000    # 488.0f

    invoke-virtual {p3, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-virtual {p3, p2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p3, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p2, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 p1, 0x43960000    # 300.0f

    const/high16 p3, 0x42c00000    # 96.0f

    invoke-virtual {p2, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 p2, 0x42b00000    # 88.0f

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->updateColors()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->X:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->N:Z

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->updateColors()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->O:Z

    return p1
.end method


# virtual methods
.method public setClickHandler(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->X:Ljava/lang/Runnable;

    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->S:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->U:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->W:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->updateColors()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->M:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->M:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->updateColors()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateColors()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->M:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->U:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->O:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->S:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->W:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->W:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->Y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;->V:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    return-void
.end method
