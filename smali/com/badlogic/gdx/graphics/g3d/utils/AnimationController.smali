.class public Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;,
        Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;
    }
.end annotation


# instance fields
.field public allowSameAnimation:Z

.field public current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public final e:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public inAction:Z

.field public paused:Z

.field public previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

.field public queuedTransitionTime:F

.field public transitionCurrentTime:F

.field public transitionTargetTime:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;-><init>(Lcom/badlogic/gdx/graphics/g3d/ModelInstance;)V

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$1;-><init>(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->f:Z

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->s(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->o(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public action(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->action(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->s(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->p(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public animate(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 6

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->animate(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->r(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->p(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->t(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->p(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :cond_3
    :goto_2
    return-object p1

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "An action cannot be continuous"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_4

    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->t(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v1, v2, :cond_2

    iget p2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput p2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->n(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    goto :goto_1

    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :goto_1
    return-object p1
.end method

.method public final q(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iput-object p6, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    iput p5, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    const/4 p4, 0x0

    cmpg-float p6, p3, p4

    if-gez p6, :cond_1

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/Animation;->duration:F

    sub-float p3, p1, p2

    :cond_1
    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    cmpg-float p1, p5, p4

    if-gez p1, :cond_2

    move p4, p3

    :cond_2
    iput p4, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    return-object v0
.end method

.method public queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->s(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1, p7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->t(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public queue(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queue(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->duration:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    iget v5, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->speed:F

    iget-object v6, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->listener:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->q(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->getAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->q(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown animation: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAnimation(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->s(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->u(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;I)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 7

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;FFIFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;ILcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public setAnimation(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->setAnimation(Ljava/lang/String;IFLcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationListener;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget v0, p2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-gez v0, :cond_3

    const/4 v0, 0x1

    iput v0, p2, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->p(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :cond_3
    :goto_1
    return-object p1
.end method

.method public u(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->allowSameAnimation:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->n(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->f:Z

    return-object p1
.end method

.method public update(F)V
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->paused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->n(Lcom/badlogic/gdx/graphics/g3d/model/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->f:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->e:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->f:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->target:Lcom/badlogic/gdx/graphics/g3d/ModelInstance;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/ModelInstance;->calculateTransforms()V

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->f:Z

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v0, :cond_7

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->loopCount:I

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->a(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->inAction:Z

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queuedTransitionTime:F

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->p(Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;F)Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->queued:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->update(F)V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->previous:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v2, v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float v4, v0, p1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionCurrentTime:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->transitionTargetTime:F

    div-float v5, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->d(Lcom/badlogic/gdx/graphics/g3d/model/Animation;FLcom/badlogic/gdx/graphics/g3d/model/Animation;FF)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController;->current:Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->animation:Lcom/badlogic/gdx/graphics/g3d/model/Animation;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->offset:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/utils/AnimationController$AnimationDesc;->time:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseAnimationController;->b(Lcom/badlogic/gdx/graphics/g3d/model/Animation;F)V

    :cond_7
    :goto_0
    return-void
.end method
