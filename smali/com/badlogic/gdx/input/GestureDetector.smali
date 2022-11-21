.class public Lcom/badlogic/gdx/input/GestureDetector;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;,
        Lcom/badlogic/gdx/input/GestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public final B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

.field public C:F

.field public D:F

.field public E:J

.field public F:Lcom/badlogic/gdx/math/Vector2;

.field public final G:Lcom/badlogic/gdx/math/Vector2;

.field public final H:Lcom/badlogic/gdx/math/Vector2;

.field public final I:Lcom/badlogic/gdx/math/Vector2;

.field public final J:Lcom/badlogic/gdx/utils/Timer$Task;

.field public final a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

.field public b:F

.field public d:F

.field public k:J

.field public p:F

.field public q:J

.field public r:Z

.field public s:I

.field public t:J

.field public u:F

.field public v:F

.field public w:I

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(FFFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-direct {v0}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->H:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->I:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/input/GestureDetector$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/input/GestureDetector$1;-><init>(Lcom/badlogic/gdx/input/GestureDetector;)V

    iput-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    if-eqz p6, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->b:F

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->d:F

    const p1, 0x4e6e6b28    # 1.0E9f

    mul-float p3, p3, p1

    float-to-long p2, p3

    iput-wide p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->k:J

    iput p4, p0, Lcom/badlogic/gdx/input/GestureDetector;->p:F

    mul-float p5, p5, p1

    float-to-long p1, p5

    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->q:J

    iput-object p6, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/GestureDetector$GestureListener;)V
    .locals 6

    const/high16 v1, 0x41a00000    # 20.0f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x4f000000

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/input/GestureDetector;-><init>(FFFFLcom/badlogic/gdx/input/GestureDetector$GestureListener;)V

    return-void
.end method


# virtual methods
.method public final a(FFFF)Z
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->b:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->d:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->y:Z

    return-void
.end method

.method public invalidateTapSquare()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    return-void
.end method

.method public isLongPressed()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->p:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/GestureDetector;->isLongPressed(F)Z

    move-result v0

    return v0
.end method

.method public isLongPressed(F)Z
    .locals 6

    iget-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    sub-long/2addr v0, v3

    const v3, 0x4e6e6b28    # 1.0E9f

    mul-float p1, p1, v3

    float-to-long v3, p1

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isPanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    return v0
.end method

.method public reset()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iput-wide v0, v2, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->f:J

    return-void
.end method

.method public setLongPressSeconds(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->p:F

    return-void
.end method

.method public setMaxFlingDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->q:J

    return-void
.end method

.method public setTapCountInterval(F)V
    .locals 2

    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float p1, p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->k:J

    return-void
.end method

.method public setTapRectangleSize(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->b:F

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->d:F

    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/input/GestureDetector;->setTapRectangleSize(FF)V

    return-void
.end method

.method public touchDown(FFII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p3, v1, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    iget-object v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->z:Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->H:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->z:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->y:Z

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->C:F

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->D:F

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->p:F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->z:Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->H:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->touchDown(FFII)Z

    move-result p1

    return p1
.end method

.method public touchDown(IIII)Z
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchDown(FFII)Z

    move-result p1

    return p1
.end method

.method public touchDragged(FFI)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->y:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    iget-boolean p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->z:Z

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->H:Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->I:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {p1, p2, p3, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->H:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->I:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p3

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    invoke-interface {p2, p3, v2}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->zoom(FF)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0

    :cond_5
    return v1

    :cond_6
    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    invoke-virtual {p3, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    iget-boolean p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    if-eqz p3, :cond_7

    iget p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->C:F

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->D:F

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/badlogic/gdx/input/GestureDetector;->a(FFFF)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    :cond_7
    iget-boolean p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    if-nez p3, :cond_8

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget v1, v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->d:F

    iget v0, v0, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->e:F

    invoke-interface {p3, p1, p2, v1, v0}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pan(FFFF)Z

    move-result p1

    return p1

    :cond_8
    return v1
.end method

.method public touchDragged(III)Z
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/input/GestureDetector;->touchDragged(FFI)Z

    move-result p1

    return p1
.end method

.method public touchUp(FFII)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->C:F

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->D:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector;->a(FFFF)Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->J:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->y:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->r:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->w:I

    if-ne v2, p4, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->x:I

    if-ne v2, p3, :cond_3

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->t:J

    sub-long/2addr v2, v6

    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->k:J

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->u:F

    iget v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->v:F

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector;->a(FFFF)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->s:I

    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->s:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->s:I

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->t:J

    iput p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->u:F

    iput p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->v:F

    iput p4, p0, Lcom/badlogic/gdx/input/GestureDetector;->w:I

    iput p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->x:I

    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    iget-object p3, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->s:I

    invoke-interface {p3, p1, p2, v0, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->tap(FFII)Z

    move-result p1

    return p1

    :cond_5
    iget-boolean v3, p0, Lcom/badlogic/gdx/input/GestureDetector;->z:Z

    if-eqz v3, :cond_7

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/GestureDetector;->z:Z

    iget-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {p1}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->pinchStop()V

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    if-nez p3, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->G:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {p4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    invoke-virtual {p1, p3, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    iget-object p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->F:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {p4}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    invoke-virtual {p1, p3, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->start(FFJ)V

    :goto_0
    return v1

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->A:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->panStop(FFII)Z

    move-result p3

    goto :goto_1

    :cond_8
    const/4 p3, 0x0

    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getCurrentEventTime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    sub-long v6, v2, v6

    iget-wide v8, p0, Lcom/badlogic/gdx/input/GestureDetector;->q:J

    cmp-long v10, v6, v8

    if-gtz v10, :cond_b

    iget-object v6, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v6, p1, p2, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->update(FFJ)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector;->a:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object p2, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {p2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityX()F

    move-result p2

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector;->B:Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;

    invoke-virtual {v2}, Lcom/badlogic/gdx/input/GestureDetector$VelocityTracker;->getVelocityY()F

    move-result v2

    invoke-interface {p1, p2, v2, p4}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->fling(FFI)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_2
    move p3, v0

    :cond_b
    iput-wide v4, p0, Lcom/badlogic/gdx/input/GestureDetector;->E:J

    return p3
.end method

.method public touchUp(IIII)Z
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/GestureDetector;->touchUp(FFII)Z

    move-result p1

    return p1
.end method
