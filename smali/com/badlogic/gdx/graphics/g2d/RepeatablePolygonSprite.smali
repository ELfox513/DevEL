.class public Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public b:Z

.field public c:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field

.field public e:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[S>;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:Lcom/badlogic/gdx/graphics/Color;

.field public k:Lcom/badlogic/gdx/math/Vector2;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->b:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->c:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->e:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->j:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->k:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->c:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_6

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->g:I

    div-int v6, v2, v5

    rem-int v5, v2, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    array-length v9, v3

    if-ge v7, v9, :cond_5

    add-int/lit8 v9, v8, 0x1

    aget v10, v3, v7

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v10, v12

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    add-float/2addr v10, v12

    aput v10, v4, v8

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v10, v7, 0x1

    aget v12, v3, v10

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v12, v11

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    add-float/2addr v12, v11

    aput v12, v4, v9

    add-int/lit8 v9, v8, 0x1

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->j:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v11

    aput v11, v4, v8

    aget v8, v3, v7

    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->h:F

    rem-float v12, v8, v11

    div-float/2addr v12, v11

    aget v10, v3, v10

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->i:F

    rem-float v14, v10, v13

    div-float/2addr v14, v13

    int-to-float v15, v6

    mul-float v15, v15, v11

    const/16 v16, 0x0

    cmpl-float v15, v8, v15

    if-nez v15, :cond_1

    const/4 v12, 0x0

    :cond_1
    add-int/lit8 v15, v6, 0x1

    int-to-float v15, v15

    mul-float v15, v15, v11

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v15

    if-nez v8, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    :cond_2
    int-to-float v8, v5

    mul-float v8, v8, v13

    cmpl-float v8, v10, v8

    if-nez v8, :cond_3

    const/4 v14, 0x0

    :cond_3
    add-int/lit8 v8, v5, 0x1

    int-to-float v8, v8

    mul-float v8, v8, v13

    cmpl-float v8, v10, v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    move v11, v14

    :goto_2
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v8

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v10

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v13

    sub-float/2addr v10, v13

    mul-float v10, v10, v12

    add-float/2addr v8, v10

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v10

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v12

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v13

    sub-float/2addr v12, v13

    mul-float v12, v12, v11

    add-float/2addr v10, v12

    add-int/lit8 v11, v9, 0x1

    aput v8, v4, v9

    add-int/lit8 v8, v11, 0x1

    aput v10, v4, v11

    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    :cond_5
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->b:Z

    return-void
.end method

.method public final b([F)[F
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->k:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget v5, p1, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    :cond_0
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v5, v0, 0x1

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_3

    aget v0, p1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->k:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v3

    aput v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    aget v3, p1, v0

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v2

    aput v3, p1, v0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public final c([F)[F
    .locals 9

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget v1, p1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->h:F

    div-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v3, v4

    add-int/lit8 v5, v0, 0x1

    aget v6, p1, v5

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->i:F

    div-float/2addr v6, v7

    rem-float/2addr v6, v4

    const v4, 0x3c23d70a    # 0.01f

    const v7, 0x3f7d70a4    # 0.99f

    cmpl-float v8, v3, v7

    if-gtz v8, :cond_0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    aput v2, p1, v0

    :cond_1
    cmpl-float v1, v6, v7

    if-gtz v1, :cond_2

    cmpg-float v1, v6, v4

    if-gez v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->i:F

    aget v2, p1, v5

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    aput v1, p1, v5

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V
    .locals 10

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [F

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    array-length v6, v1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [S

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    array-length v9, v1

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->j:Lcom/badlogic/gdx/graphics/Color;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->b:Z

    return-void
.end method

.method public setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[FF)V

    return-void
.end method

.method public setPolygon(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->b([F)[F

    move-result-object v2

    new-instance v3, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    new-instance v2, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    new-instance v4, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Polygon;-><init>()V

    new-instance v5, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Polygon;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v6

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, p3, v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    goto :goto_0

    :cond_0
    move/from16 v7, p3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v8, v1

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->f:I

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    div-float/2addr v1, v7

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->h:F

    mul-float v8, v8, v1

    iput v8, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->i:F

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v1

    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->i:F

    div-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->g:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->f:I

    if-ge v6, v7, :cond_3

    const/4 v7, 0x0

    :goto_2
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->g:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    new-array v8, v8, [F

    int-to-float v9, v6

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->h:F

    mul-float v11, v9, v10

    aput v11, v8, v1

    const/4 v11, 0x2

    int-to-float v12, v7

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->i:F

    mul-float v14, v12, v13

    const/4 v15, 0x1

    aput v14, v8, v15

    const/4 v14, 0x3

    mul-float v9, v9, v10

    aput v9, v8, v11

    const/4 v9, 0x4

    add-int/lit8 v7, v7, 0x1

    int-to-float v11, v7

    mul-float v15, v11, v13

    aput v15, v8, v14

    const/4 v14, 0x5

    add-int/lit8 v15, v6, 0x1

    int-to-float v15, v15

    mul-float v16, v15, v10

    aput v16, v8, v9

    const/4 v9, 0x6

    mul-float v11, v11, v13

    aput v11, v8, v14

    const/4 v11, 0x7

    mul-float v15, v15, v10

    aput v15, v8, v9

    mul-float v12, v12, v13

    aput v12, v8, v11

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    invoke-static {v3, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v8

    array-length v9, v8

    if-lez v9, :cond_1

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->c([F)[F

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->e:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->c:Lcom/badlogic/gdx/utils/Array;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->a()V

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->x:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/RepeatablePolygonSprite;->b:Z

    return-void
.end method
