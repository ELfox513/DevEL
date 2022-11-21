.class public Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F

.field public v:F

.field public w:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(F)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    return-void
.end method

.method public constructor <init>(FFFLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p4    # Lcom/badlogic/gdx/math/Interpolation;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(FLcom/badlogic/gdx/math/Interpolation;)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->w:F

    return-void
.end method

.method public c(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->w:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->w:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->w:F

    :goto_0
    return-void
.end method

.method public getEnd()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    return v0
.end method

.method public getStart()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    return v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->w:F

    return v0
.end method

.method public setEnd(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->v:F

    return-void
.end method

.method public setStart(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->u:F

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->w:F

    return-void
.end method
