.class public Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/utils/Path;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;,
        Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/steer/utils/Path<",
        "TT;",
        "Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:F

.field public d:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->b:Z

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->createPath(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->d:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->e:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->f:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->g:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public bridge synthetic calculateDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;)F
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->calculateDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;)F

    move-result p1

    return p1
.end method

.method public calculateDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;",
            ")F"
        }
    .end annotation

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;

    iget-object v4, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->d:Lcom/badlogic/gdx/math/Vector;

    iget-object v5, v3, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->a:Lcom/badlogic/gdx/math/Vector;

    iget-object v6, v3, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, v4, v5, v6, p1}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->calculatePointSegmentSquareDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->e:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->d:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iput v2, p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;->a:I

    move-object v1, v3

    move v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, v1, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->d:F

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->e:Lcom/badlogic/gdx/math/Vector;

    iget-object v1, v1, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;->setDistance(F)V

    return p1
.end method

.method public calculatePointSegmentSquareDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)F"
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->f:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object p3, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->g:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p3, p4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object p3, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->f:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p3, p2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p3

    invoke-interface {p3}, Lcom/badlogic/gdx/math/Vector;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->g:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, p2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/badlogic/gdx/math/Vector;->dot(Lcom/badlogic/gdx/math/Vector;)F

    move-result p2

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p2

    invoke-interface {p1, p3, p2}, Lcom/badlogic/gdx/math/Vector;->mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    :cond_0
    invoke-interface {p1, p4}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic calculateTargetPosition(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;F)V
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->calculateTargetPosition(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;F)V

    return-void
.end method

.method public calculateTargetPosition(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;",
            "F)V"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->b:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    cmpg-float p2, p3, v0

    if-gez p2, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    cmpl-float v0, p3, p2

    if-lez v0, :cond_3

    move p3, p2

    goto :goto_0

    :cond_1
    cmpg-float p2, p3, v0

    if-gez p2, :cond_2

    iget p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    rem-float/2addr p3, p2

    add-float/2addr p3, p2

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    cmpl-float v0, p3, p2

    if-lez v0, :cond_3

    rem-float/2addr p3, p2

    :cond_3
    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;

    iget v2, v1, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->d:F

    cmpl-float v2, v2, p3

    if-ltz v2, :cond_4

    move-object p2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget v0, p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->d:F

    sub-float/2addr v0, p3

    iget-object p3, p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->a:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iget-object p3, p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p3}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iget p3, p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->c:F

    div-float/2addr v0, p3

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iget-object p2, p2, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    return-void
.end method

.method public bridge synthetic createParam()Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->createParam()Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;

    move-result-object v0

    return-object v0
.end method

.method public createParam()Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;-><init>()V

    return-object v0
.end method

.method public createPath(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector;

    const/4 v1, 0x1

    :goto_0
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v1, v2, :cond_2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector;

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->b:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector;

    :goto_1
    new-instance v3, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;

    invoke-direct {v3, v0, v2}, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;-><init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    iget v4, v3, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->c:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    iput v0, v3, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->d:F

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "waypoints cannot be null and must contain at least two (2) waypoints"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getEndPoint()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->c:F

    return v0
.end method

.method public getSegments()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getStartPoint()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->a:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;->b:Z

    return v0
.end method
