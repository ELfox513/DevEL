.class public Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(F)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    return-void
.end method

.method public constructor <init>(IIFLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p4    # Lcom/badlogic/gdx/math/Interpolation;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(FLcom/badlogic/gdx/math/Interpolation;)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->w:I

    return-void
.end method

.method public c(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->w:I

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->w:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->w:I

    :goto_0
    return-void
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->w:I

    return v0
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->v:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->u:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->w:I

    return-void
.end method
