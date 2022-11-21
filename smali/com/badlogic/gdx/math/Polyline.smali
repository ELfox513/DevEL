.class public Lcom/badlogic/gdx/math/Polyline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field public a:[F

.field public b:[F

.field public d:F

.field public k:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "polylines must contain at least 2 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calculateLength()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:Z

    return-void
.end method

.method public calculateScaledLength()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    return-void
.end method

.method public contains(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polyline;->getTransformedVertices()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    array-length v3, v0

    const/4 v4, 0x2

    move v4, v2

    move v5, v4

    const/4 v6, 0x2

    move v2, v1

    :goto_0
    if-ge v6, v3, :cond_4

    aget v7, v0, v6

    cmpl-float v8, v1, v7

    if-lez v8, :cond_0

    move v1, v7

    :cond_0
    add-int/lit8 v8, v6, 0x1

    aget v8, v0, v8

    cmpl-float v9, v4, v8

    if-lez v9, :cond_1

    move v4, v8

    :cond_1
    cmpg-float v9, v2, v7

    if-gez v9, :cond_2

    move v2, v7

    :cond_2
    cmpg-float v7, v5, v8

    if-gez v7, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->z:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->z:Lcom/badlogic/gdx/math/Rectangle;

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->z:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object v0
.end method

.method public getLength()F
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->u:F

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/math/Polyline;->u:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    add-int/lit8 v3, v0, 0x2

    aget v4, v2, v3

    aget v5, v2, v0

    sub-float/2addr v4, v5

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    add-int/lit8 v0, v0, 0x3

    aget v0, v2, v0

    sub-float/2addr v5, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->u:F

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->u:F

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->u:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->p:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->q:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->r:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    return v0
.end method

.method public getScaledLength()F
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->v:F

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/math/Polyline;->v:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    add-int/lit8 v3, v0, 0x2

    aget v4, v2, v3

    iget v5, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    mul-float v4, v4, v5

    aget v6, v2, v0

    mul-float v6, v6, v5

    sub-float/2addr v4, v6

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    iget v6, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    mul-float v5, v5, v6

    add-int/lit8 v0, v0, 0x3

    aget v0, v2, v0

    mul-float v0, v0, v6

    sub-float/2addr v5, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->v:F

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->v:F

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->v:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polyline;->b:[F

    return-object v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    iget-object v2, v0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    iget-object v3, v0, Lcom/badlogic/gdx/math/Polyline;->b:[F

    if-eqz v3, :cond_1

    array-length v3, v3

    array-length v4, v2

    if-ge v3, v4, :cond_2

    :cond_1
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/badlogic/gdx/math/Polyline;->b:[F

    :cond_2
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polyline;->b:[F

    iget v4, v0, Lcom/badlogic/gdx/math/Polyline;->d:F

    iget v5, v0, Lcom/badlogic/gdx/math/Polyline;->k:F

    iget v6, v0, Lcom/badlogic/gdx/math/Polyline;->p:F

    iget v7, v0, Lcom/badlogic/gdx/math/Polyline;->q:F

    iget v8, v0, Lcom/badlogic/gdx/math/Polyline;->s:F

    iget v9, v0, Lcom/badlogic/gdx/math/Polyline;->t:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v10

    if-nez v11, :cond_4

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v10, 0x1

    :goto_1
    iget v11, v0, Lcom/badlogic/gdx/math/Polyline;->r:F

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    array-length v14, v2

    :goto_2
    if-ge v1, v14, :cond_7

    aget v15, v2, v1

    sub-float/2addr v15, v6

    add-int/lit8 v16, v1, 0x1

    aget v17, v2, v16

    sub-float v17, v17, v7

    if-eqz v10, :cond_5

    mul-float v15, v15, v8

    mul-float v17, v17, v9

    :cond_5
    const/16 v18, 0x0

    cmpl-float v18, v11, v18

    if-eqz v18, :cond_6

    mul-float v18, v12, v15

    mul-float v19, v13, v17

    sub-float v18, v18, v19

    mul-float v15, v15, v13

    mul-float v17, v17, v12

    add-float v17, v15, v17

    move/from16 v15, v18

    :cond_6
    add-float/2addr v15, v4

    add-float/2addr v15, v6

    aput v15, v3, v1

    add-float v17, v5, v17

    add-float v17, v17, v7

    aput v17, v3, v16

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_7
    return-object v3
.end method

.method public getVertices()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->d:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->k:F

    return v0
.end method

.method public rotate(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->r:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->p:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->q:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->d:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->r:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->s:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->t:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->w:Z

    return-void
.end method

.method public setVertices([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Polyline;->a:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "polylines must contain at least 2 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public translate(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->d:F

    iget p1, p0, Lcom/badlogic/gdx/math/Polyline;->k:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polyline;->y:Z

    return-void
.end method
