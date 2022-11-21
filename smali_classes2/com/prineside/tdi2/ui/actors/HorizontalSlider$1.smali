.class Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:D

.field public d:D

.field public e:F

.field public final synthetic f:F

.field public final synthetic g:D

.field public final synthetic h:D

.field public final synthetic i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;FDD)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->f:F

    iput-wide p3, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->g:D

    iput-wide p5, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->h:D

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    const/high16 p1, 0x42600000    # 56.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->b:F

    sub-double/2addr p3, p5

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    iput-wide p3, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->c:D

    return-void
.end method


# virtual methods
.method public final a(F)D
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->e:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iget-wide v2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->d:D

    add-double/2addr v2, v0

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->h:D

    cmpg-double p1, v2, v0

    if-gez p1, :cond_0

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->g:D

    cmpl-double p1, v2, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v2
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->cancel()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->e:F

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->p(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->d:D

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->q(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p1, 0x1

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->a(F)D

    move-result-wide p3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->r(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)Z

    move-result p1

    invoke-virtual {p2, p3, p4, p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->a(F)D

    move-result-wide p3

    const/4 p1, 0x1

    invoke-virtual {p2, p3, p4, p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;->i:Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->q(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
