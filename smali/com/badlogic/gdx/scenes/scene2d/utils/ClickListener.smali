.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# static fields
.field public static visualPressedDuration:F = 0.1f


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:I

.field public n:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->f:I

    const-wide/32 v0, 0x17d78400

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->l:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->f:I

    const-wide/32 v0, 0x17d78400

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->l:J

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->g:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    return-void
.end method

.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p5    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->i:Z

    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p5    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->i:Z

    :cond_0
    return-void
.end method

.method public getButton()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->g:I

    return v0
.end method

.method public getPressedButton()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->f:I

    return v0
.end method

.method public getPressedPointer()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    return v0
.end method

.method public getTapCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->m:I

    return v0
.end method

.method public getTapSquareSize()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->b:F

    return v0
.end method

.method public getTouchDownX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    return v0
.end method

.method public getTouchDownY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    return v0
.end method

.method public inTapSquare()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inTapSquare(FF)Z
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->b:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->b:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public invalidateTapSquare()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    return-void
.end method

.method public isOver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->inTapSquare(FF)Z

    move-result p1

    return p1
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    return v0
.end method

.method public isVisualPressed()Z
    .locals 9

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->k:J

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-lez v8, :cond_2

    return v1

    :cond_2
    iput-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->k:J

    return v0
.end method

.method public setButton(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->g:I

    return-void
.end method

.method public setTapCount(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->m:I

    return-void
.end method

.method public setTapCountInterval(F)V
    .locals 2

    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float p1, p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->l:J

    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->b:F

    return-void
.end method

.method public setVisualPressed(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sget p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedDuration:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float p1, p1, v2

    float-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->k:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->k:J

    :goto_0
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->g:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-eq p5, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    iput p5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->f:I

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->c:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->d:F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->setVisualPressed(Z)V

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    if-ne p4, v0, :cond_1

    iget-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->j:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->invalidateTapSquare()V

    :cond_1
    :goto_0
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    if-ne p4, v0, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->j:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    iget p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->g:I

    if-eq p4, v1, :cond_0

    if-eq p5, p4, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide p4

    iget-wide v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->n:J

    sub-long v3, p4, v3

    iget-wide v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->l:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->m:I

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->m:I

    iput-wide p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->n:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V

    :cond_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->h:Z

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->e:I

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->f:I

    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->j:Z

    :cond_3
    return-void
.end method
