.class public Lcom/prineside/tdi2/ui/actors/ComplexButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# instance fields
.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public final R:Lcom/badlogic/gdx/graphics/Color;

.field public final S:Lcom/badlogic/gdx/graphics/Color;

.field public final T:Lcom/badlogic/gdx/graphics/Color;

.field public final U:Lcom/badlogic/gdx/graphics/Color;

.field public final V:Lcom/badlogic/gdx/graphics/Color;

.field public final W:Lcom/badlogic/gdx/graphics/Color;

.field public final X:Lcom/badlogic/gdx/graphics/Color;

.field public final Y:Lcom/badlogic/gdx/graphics/Color;

.field public final Z:Lcom/badlogic/gdx/graphics/Color;

.field public final a0:Lcom/badlogic/gdx/graphics/Color;

.field public final b0:Lcom/badlogic/gdx/graphics/Color;

.field public final background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final c0:Lcom/badlogic/gdx/graphics/Color;

.field public d0:Ljava/lang/Runnable;

.field public e0:Ljava/lang/Runnable;

.field public final icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->M:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->N:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->O:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->P:Z

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->R:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->S:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->T:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->U:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->V:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->W:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->X:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Z:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->a0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->b0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->c0:Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->d0:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->e0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->backgroundShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 p4, 0x0

    const v1, 0x3e8f5c29    # 0.28f

    invoke-virtual {p3, p4, p4, p4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p3, p4, p4, p4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {p3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p3, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->updateColors()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->e0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->O:Z

    return p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->d0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->P:Z

    return p0
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->M:Z

    return p1
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->updateColors()V

    return-void
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->N:Z

    return p1
.end method


# virtual methods
.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p4, p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p0
.end method

.method public setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->R:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->S:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->U:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->updateColors()V

    return-object p0
.end method

.method public setClickHandler(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->d0:Ljava/lang/Runnable;

    return-void
.end method

.method public setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->O:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->updateColors()V

    return-object p0
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x40400000    # 3.0f

    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p4, p5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p0
.end method

.method public setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Z:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->b0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->a0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->c0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->updateColors()V

    return-object p0
.end method

.method public setIconLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIconColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-object p0
.end method

.method public setIconLabelShadowEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->iconShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Q:Z

    return-object p0
.end method

.method public setLabelColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->V:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->X:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->W:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    :cond_3
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->updateColors()V

    return-object p0
.end method

.method public setMuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->P:Z

    return-void
.end method

.method public setText(I)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->labelShadow:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final updateColors()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->O:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->X:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->b0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->T:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->W:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->a0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->S:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->V:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Z:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->R:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->background:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->U:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->c0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method
