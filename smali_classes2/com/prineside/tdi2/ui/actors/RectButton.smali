.class public Lcom/prineside/tdi2/ui/actors/RectButton;
.super Lcom/prineside/tdi2/ui/actors/ComplexButton;
.source "SourceFile"


# instance fields
.field public final f0:Lcom/prineside/tdi2/utils/QuadDrawable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance p1, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance p2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object p3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p2, p3, v0}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {p1, p2}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/RectButton;->f0:Lcom/prineside/tdi2/utils/QuadDrawable;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->b()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/RectButton;->w()V

    return-void
.end method

.method public sizeChanged()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/RectButton;->w()V

    return-void
.end method

.method public final w()V
    .locals 7

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/RectButton;->f0:Lcom/prineside/tdi2/utils/QuadDrawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Q:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton;->Q:Z

    :cond_0
    return-void
.end method
