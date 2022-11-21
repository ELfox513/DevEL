.class public Lcom/prineside/tdi2/ui/actors/PaddedImageButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# instance fields
.field public M:Z

.field public N:Z

.field public O:Z

.field public final P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public R:Lcom/badlogic/gdx/graphics/Color;

.field public S:Lcom/badlogic/gdx/graphics/Color;

.field public T:Lcom/badlogic/gdx/graphics/Color;

.field public final U:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->M:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->N:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->O:Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->U:Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->R:Lcom/badlogic/gdx/graphics/Color;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->S:Lcom/badlogic/gdx/graphics/Color;

    iput-object p5, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget p3, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    const p4, 0x3f0f5c29    # 0.56f

    mul-float p3, p3, p4

    iput p3, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton$1;

    invoke-direct {p1, p0, p2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/PaddedImageButton;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->updateColors()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/PaddedImageButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->O:Z

    return p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/PaddedImageButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->M:Z

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/actors/PaddedImageButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->N:Z

    return p1
.end method


# virtual methods
.method public getDisabledColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->U:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getIcon()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public hideShadow()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->R:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->S:Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->updateColors()V

    return-void
.end method

.method public setDisabledColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->U:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->updateColors()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->O:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->updateColors()V

    return-void
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-object p0
.end method

.method public setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p0
.end method

.method public setShadow(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p4, p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public updateColors()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->O:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->S:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->R:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->U:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method
