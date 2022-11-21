.class public Lcom/badlogic/gdx/ai/pfa/PathSmoother;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TV;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/ai/utils/Ray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->a:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    return-void
.end method


# virtual methods
.method public smoothPath(Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath<",
            "TN;TV;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->getNodePosition(I)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    new-instance v3, Lcom/badlogic/gdx/ai/utils/Ray;

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v1}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/badlogic/gdx/ai/utils/Ray;-><init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    iput-object v3, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    iget-object v4, v4, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {p1, v5}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->getNodePosition(I)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    iget-object v4, v4, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->getNodePosition(I)Lcom/badlogic/gdx/math/Vector;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->a:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    iget-object v5, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;->collides(Lcom/badlogic/gdx/ai/utils/Ray;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v3, v4}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->swapNodes(II)V

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v3, v0}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->swapNodes(II)V

    add-int/lit8 v0, v3, 0x1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->truncatePath(I)V

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    return v2
.end method

.method public smoothPath(Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest<",
            "TN;TV;>;J)Z"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->path:Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;

    invoke-interface {v2}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->getCount()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gt v3, v4, :cond_0

    return v5

    :cond_0
    iget-boolean v6, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->isNew:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iput-boolean v7, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->isNew:Z

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->path:Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->getNodePosition(I)Lcom/badlogic/gdx/math/Vector;

    move-result-object v6

    new-instance v8, Lcom/badlogic/gdx/ai/utils/Ray;

    invoke-interface {v6}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v9

    invoke-interface {v6}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Lcom/badlogic/gdx/ai/utils/Ray;-><init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    iput-object v8, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    :cond_1
    iput v5, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    iput v4, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->inputIndex:I

    :cond_2
    :goto_0
    iget v4, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->inputIndex:I

    if-ge v4, v3, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v8

    sub-long v0, v8, v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x64

    cmp-long v4, p2, v0

    if-gtz v4, :cond_3

    return v7

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/utils/Ray;->start:Lcom/badlogic/gdx/math/Vector;

    iget v1, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    sub-int/2addr v1, v5

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->getNodePosition(I)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/utils/Ray;->end:Lcom/badlogic/gdx/math/Vector;

    iget v1, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->inputIndex:I

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->getNodePosition(I)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->a:Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/PathSmoother;->b:Lcom/badlogic/gdx/ai/utils/Ray;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;->collides(Lcom/badlogic/gdx/ai/utils/Ray;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    iget v1, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->inputIndex:I

    sub-int/2addr v1, v5

    invoke-interface {v2, v0, v1}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->swapNodes(II)V

    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    :cond_4
    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->inputIndex:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->inputIndex:I

    move-wide v0, v8

    goto :goto_0

    :cond_5
    iget p2, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    sub-int/2addr v4, v5

    invoke-interface {v2, p2, v4}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->swapNodes(II)V

    iget p1, p1, Lcom/badlogic/gdx/ai/pfa/PathSmootherRequest;->outputIndex:I

    add-int/2addr p1, v5

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;->truncatePath(I)V

    return v5
.end method
