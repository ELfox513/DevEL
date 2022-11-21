.class public Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:[F

.field public l:Z

.field public m:Lcom/badlogic/gdx/math/Rectangle;

.field public final n:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->m:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->f:I

    int-to-float v0, v0

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->g:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    div-float/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    new-instance v1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->m:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .locals 10

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    array-length v6, v1

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->c:[S

    array-length v9, v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float p2, p2, v1

    iput p2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->getVertices()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x5

    move v3, v2

    move v4, v3

    const/4 v5, 0x5

    move v2, v1

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_4

    aget v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    cmpl-float v8, v1, v6

    if-lez v8, :cond_0

    move v1, v6

    :cond_0
    cmpg-float v8, v2, v6

    if-gez v8, :cond_1

    move v2, v6

    :cond_1
    cmpl-float v6, v3, v7

    if-lez v6, :cond_2

    move v3, v7

    :cond_2
    cmpg-float v6, v4, v7

    if-gez v6, :cond_3

    move v4, v7

    :cond_3
    add-int/lit8 v5, v5, 0x5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->m:Lcom/badlogic/gdx/math/Rectangle;

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v4, v3

    iput v4, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->i:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->j:F

    return v0
.end method

.method public getPackedColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    return v0
.end method

.method public getVertices()[F
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    return-object v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->i:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->j:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    iget-object v8, v6, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->b:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    add-float/2addr v9, v2

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    add-float/2addr v10, v3

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    iget-object v12, v6, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    iget-object v6, v6, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v12, v6

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v6

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    invoke-static {v13}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    array-length v14, v8

    const/4 v15, 0x0

    :goto_0
    if-ge v1, v14, :cond_1

    aget v16, v8, v1

    mul-float v16, v16, v11

    sub-float v16, v16, v2

    mul-float v16, v16, v4

    add-int/lit8 v17, v1, 0x1

    aget v17, v8, v17

    mul-float v17, v17, v12

    sub-float v17, v17, v3

    mul-float v17, v17, v5

    mul-float v18, v6, v16

    mul-float v19, v13, v17

    sub-float v18, v18, v19

    add-float v18, v18, v9

    aput v18, v7, v15

    add-int/lit8 v18, v15, 0x1

    mul-float v16, v16, v13

    mul-float v17, v17, v6

    add-float v16, v16, v17

    add-float v16, v16, v10

    aput v16, v7, v18

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v15, v15, 0x5

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    return v0
.end method

.method public rotate(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->i:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->i:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->j:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->j:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sprite cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBounds(FFFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 p3, 0x2

    :goto_0
    array-length p4, p2

    if-ge p3, p4, :cond_0

    aput p1, p2, p3

    add-int/lit8 p3, p3, 0x5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 v1, 0x2

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->i:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translate(FF)V

    return-void
.end method

.method public setRegion(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V
    .locals 8

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->b:[F

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->a:[F

    array-length v0, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    if-eqz v2, :cond_0

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->n:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_0
    if-ge v5, v0, :cond_2

    aput v2, v3, v5

    add-int/lit8 v6, v5, 0x1

    aget v7, p1, v4

    aput v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v4, 0x1

    aget v7, p1, v7

    aput v7, v3, v6

    add-int/2addr v4, v1

    add-int/lit8 v5, v5, 0x5

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->f:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->g:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->d:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->e:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    return-void
.end method

.method public setX(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateX(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->translateY(F)V

    return-void
.end method

.method public translate(FF)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v2, v1, 0x1

    aget v3, v0, v2

    add-float/2addr v3, p2

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public translateX(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->b:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public translateY(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->c:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->k:[F

    const/4 v1, 0x1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_1
    return-void
.end method
