.class public Lcom/badlogic/gdx/math/Polygon;
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

.field public u:Z

.field public v:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->s:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->t:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->s:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->t:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "polygons must contain at least 3 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public area()F
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/GeometryUtils;->polygonArea([FII)F

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    add-int/lit8 v7, v3, 0x2

    rem-int v8, v7, v1

    aget v8, v0, v8

    add-int/lit8 v3, v3, 0x3

    rem-int/2addr v3, v1

    aget v3, v0, v3

    cmpg-float v9, v6, p2

    if-gtz v9, :cond_0

    cmpg-float v9, p2, v3

    if-ltz v9, :cond_1

    :cond_0
    cmpg-float v9, v3, p2

    if-gtz v9, :cond_2

    cmpg-float v9, p2, v6

    if-gez v9, :cond_2

    :cond_1
    sub-float/2addr v8, v5

    sub-float/2addr v3, v6

    div-float/2addr v8, v3

    sub-float v3, p2, v6

    mul-float v8, v8, v3

    add-float/2addr v8, v5

    cmpg-float v3, p1, v8

    if-gez v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    and-int/lit8 p2, v4, 0x1

    if-ne p2, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Polygon;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public dirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

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
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->v:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->v:Lcom/badlogic/gdx/math/Rectangle;

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->v:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v5, v4

    iput v5, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object v0
.end method

.method public getCentroid(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/badlogic/gdx/math/GeometryUtils;->polygonCentroid([FIILcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->p:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->q:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->r:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->s:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->t:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->b:[F

    return-object v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    iget-object v2, v0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    iget-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->b:[F

    if-eqz v3, :cond_1

    array-length v3, v3

    array-length v4, v2

    if-eq v3, v4, :cond_2

    :cond_1
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->b:[F

    :cond_2
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->b:[F

    iget v4, v0, Lcom/badlogic/gdx/math/Polygon;->d:F

    iget v5, v0, Lcom/badlogic/gdx/math/Polygon;->k:F

    iget v6, v0, Lcom/badlogic/gdx/math/Polygon;->p:F

    iget v7, v0, Lcom/badlogic/gdx/math/Polygon;->q:F

    iget v8, v0, Lcom/badlogic/gdx/math/Polygon;->s:F

    iget v9, v0, Lcom/badlogic/gdx/math/Polygon;->t:F

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
    iget v11, v0, Lcom/badlogic/gdx/math/Polygon;->r:F

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

.method public getVertex(ILcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getVertexCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    aget v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    invoke-virtual {p2, v1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the vertex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getVertexCount()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getVertices()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->d:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->k:F

    return v0
.end method

.method public rotate(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->r:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->s:F

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->t:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->t:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->p:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->q:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->d:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->r:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->s:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->t:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method

.method public setVertex(IFF)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    aput p2, v0, p1

    add-int/2addr p1, v2

    aput p3, v0, p1

    iput-boolean v2, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the vertex "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setVertices([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->a:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "polygons must contain at least 3 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public translate(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->d:F

    iget p1, p0, Lcom/badlogic/gdx/math/Polygon;->k:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->u:Z

    return-void
.end method
