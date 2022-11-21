.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SourceFile"


# instance fields
.field public k:F

.field public p:F

.field public q:Lcom/badlogic/gdx/math/Interpolation;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->k:F

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p2    # Lcom/badlogic/gdx/math/Interpolation;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->k:F

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->q:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public act(F)Z
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->s:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->a()V

    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->s:Z

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->p:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->p:F

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->k:F

    cmpl-float v3, v2, p1

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->t:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    div-float/2addr v2, p1

    :goto_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->q:Lcom/badlogic/gdx/math/Interpolation;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v2

    :cond_4
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->r:Z

    if-eqz p1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->c(F)V

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->t:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->b()V

    :cond_6
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public abstract c(F)V
.end method

.method public finish()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->k:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->p:F

    return-void
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->k:F

    return v0
.end method

.method public getInterpolation()Lcom/badlogic/gdx/math/Interpolation;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->q:Lcom/badlogic/gdx/math/Interpolation;

    return-object v0
.end method

.method public getTime()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->p:F

    return v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->t:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->r:Z

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->q:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public restart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->p:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->s:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->t:Z

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->k:F

    return-void
.end method

.method public setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/math/Interpolation;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->q:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->r:Z

    return-void
.end method

.method public setTime(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->p:F

    return-void
.end method
