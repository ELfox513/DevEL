.class public Lcom/prineside/tdi2/shapes/MultiLine;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/MultiLine$MultiLineFactory;
    }
.end annotation


# static fields
.field public static final y:Lcom/badlogic/gdx/graphics/Color;

.field public static final z:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:[F

.field public b:[F

.field public d:I

.field public final k:Lcom/badlogic/gdx/graphics/Color;

.field public p:Z

.field public q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public r:Z

.field public s:Z

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/MultiLine;->y:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/MultiLine;->z:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    iput v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/MultiLine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/MultiLine;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    mul-int/lit8 v0, p1, 0x6

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 v1, p1, 0x6

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    add-int/lit8 v0, v0, 0x3

    aget v0, v2, v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    const v4, 0xff00

    and-int v5, v0, v4

    shr-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    iget v6, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/high16 v6, 0xff0000

    and-int v7, v0, v6

    shr-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    iget v8, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    const/high16 v8, -0x1000000

    and-int/2addr v0, v8

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    shl-int/lit8 v3, v5, 0x8

    add-int/2addr v2, v3

    shl-int/lit8 v3, v7, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    add-int/lit8 v1, v1, 0x3

    aget v1, v2, v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    and-int v5, v1, v6

    shr-int/lit8 v5, v5, 0x10

    int-to-float v5, v5

    iget v6, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    and-int/2addr v1, v8

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    shl-int/lit8 v3, v4, 0x8

    add-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v2, v1

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 v2, p1, 0x14

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    add-int/lit8 v4, v2, 0x2

    aput v1, v3, v4

    add-int/lit8 v4, v2, 0x7

    aput v0, v3, v4

    add-int/lit8 v4, v2, 0xc

    aput v0, v3, v4

    add-int/lit8 v2, v2, 0x11

    aput v1, v3, v2

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x14

    add-int/lit8 v2, p1, 0x2

    aput v1, v3, v2

    add-int/lit8 v2, p1, 0x7

    aput v0, v3, v2

    add-int/lit8 v2, p1, 0xc

    aput v0, v3, v2

    add-int/lit8 p1, p1, 0x11

    aput v1, v3, p1

    return-void
.end method

.method public appendNode(FFFFZ)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->d(I)V

    iget v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aput p1, v2, v1

    add-int/lit8 p1, v1, 0x1

    aput p2, v2, p1

    add-int/lit8 p1, v1, 0x2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p3, p2

    aput p3, v2, p1

    add-int/lit8 v1, v1, 0x3

    aput p4, v2, v1

    if-eqz p5, :cond_1

    if-eqz v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->e(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->e(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->a(I)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public final d(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->c(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    :cond_0
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    array-length v0, v0

    if-ge v0, p1, :cond_1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    new-array p1, p1, [F

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/MultiLine;->b()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/shapes/MultiLine;->c(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x14

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->g(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->f(I)V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->f(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public final f(I)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, p1, 0x6

    const/4 v2, 0x1

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v4, v3, 0x6

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v5, v3, 0x14

    iget-object v6, v0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    iget-object v7, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v8, v7, v4

    aput v8, v6, v5

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v4, 0x1

    aget v10, v7, v9

    aput v10, v6, v8

    add-int/lit8 v8, v5, 0x3

    iget v10, v0, Lcom/prineside/tdi2/shapes/MultiLine;->u:F

    aput v10, v6, v8

    add-int/lit8 v8, v5, 0x4

    iget v10, v0, Lcom/prineside/tdi2/shapes/MultiLine;->w:F

    aput v10, v6, v8

    add-int/lit8 v8, v5, 0x5

    aget v11, v7, v1

    aput v11, v6, v8

    add-int/lit8 v8, v5, 0x6

    add-int/lit8 v11, v1, 0x1

    aget v12, v7, v11

    aput v12, v6, v8

    add-int/lit8 v8, v5, 0x8

    iget v12, v0, Lcom/prineside/tdi2/shapes/MultiLine;->t:F

    aput v12, v6, v8

    add-int/lit8 v8, v5, 0x9

    aput v10, v6, v8

    sget-object v6, Lcom/prineside/tdi2/shapes/MultiLine;->z:Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 v8, v1, 0x4

    aget v10, v7, v8

    add-int/lit8 v12, v1, 0x5

    aget v7, v7, v12

    invoke-virtual {v6, v10, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget-object v10, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    add-int/lit8 v13, v1, 0x2

    aget v10, v10, v13

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, v0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    add-int/lit8 v10, v5, 0xa

    iget-object v14, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v15, v14, v1

    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v15, v2

    aput v15, v7, v10

    add-int/lit8 v2, v5, 0xb

    aget v10, v14, v11

    iget v15, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v10, v15

    aput v10, v7, v2

    add-int/lit8 v2, v5, 0xd

    iget v10, v0, Lcom/prineside/tdi2/shapes/MultiLine;->t:F

    aput v10, v7, v2

    add-int/lit8 v2, v5, 0xe

    iget v10, v0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    aput v10, v7, v2

    add-int/lit8 v2, v4, 0x4

    aget v7, v14, v2

    add-int/lit8 v10, v4, 0x5

    aget v14, v14, v10

    invoke-virtual {v6, v7, v14}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget-object v14, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    add-int/lit8 v15, v4, 0x2

    aget v14, v14, v15

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, v0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    add-int/lit8 v14, v5, 0xf

    move/from16 p1, v11

    iget-object v11, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v16, v11, v4

    move/from16 v17, v1

    iget v1, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v16, v16, v1

    aput v16, v7, v14

    add-int/lit8 v1, v5, 0x10

    aget v14, v11, v9

    move/from16 v16, v13

    iget v13, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v14, v13

    aput v14, v7, v1

    add-int/lit8 v1, v5, 0x12

    iget v13, v0, Lcom/prineside/tdi2/shapes/MultiLine;->u:F

    aput v13, v7, v1

    add-int/lit8 v5, v5, 0x13

    iget v1, v0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    aput v1, v7, v5

    const/4 v1, 0x1

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x14

    aget v1, v11, v2

    aget v2, v11, v10

    invoke-virtual {v6, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v2, v2, v15

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    iget-object v2, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v5, v2, v4

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v7

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget v7, v2, v9

    iget v10, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v7, v10

    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x3

    iget v7, v0, Lcom/prineside/tdi2/shapes/MultiLine;->u:F

    aput v7, v1, v5

    add-int/lit8 v5, v3, 0x4

    iget v7, v0, Lcom/prineside/tdi2/shapes/MultiLine;->x:F

    aput v7, v1, v5

    aget v1, v2, v8

    aget v2, v2, v12

    invoke-virtual {v6, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v2, v2, v16

    neg-float v2, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/MultiLine;->a:[F

    add-int/lit8 v2, v3, 0x5

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v7, v5, v17

    iget v8, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v7, v8

    aput v7, v1, v2

    add-int/lit8 v2, v3, 0x6

    aget v7, v5, p1

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v7, v6

    aput v7, v1, v2

    add-int/lit8 v2, v3, 0x8

    iget v6, v0, Lcom/prineside/tdi2/shapes/MultiLine;->t:F

    aput v6, v1, v2

    add-int/lit8 v2, v3, 0x9

    iget v7, v0, Lcom/prineside/tdi2/shapes/MultiLine;->x:F

    aput v7, v1, v2

    add-int/lit8 v2, v3, 0xa

    aget v7, v5, v17

    aput v7, v1, v2

    add-int/lit8 v2, v3, 0xb

    aget v7, v5, p1

    aput v7, v1, v2

    add-int/lit8 v2, v3, 0xd

    aput v6, v1, v2

    add-int/lit8 v2, v3, 0xe

    iget v6, v0, Lcom/prineside/tdi2/shapes/MultiLine;->w:F

    aput v6, v1, v2

    add-int/lit8 v2, v3, 0xf

    aget v4, v5, v4

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0x10

    aget v4, v5, v9

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0x12

    iget v4, v0, Lcom/prineside/tdi2/shapes/MultiLine;->u:F

    aput v4, v1, v2

    add-int/lit8 v3, v3, 0x13

    aput v6, v1, v3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public final g(I)V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, p1, 0x6

    if-nez p1, :cond_1

    add-int/lit8 p1, v1, 0x6

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v2, v0, p1

    aget v3, v0, v1

    sub-float/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    add-int/lit8 v3, v1, 0x1

    aget v0, v0, v3

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    add-int/lit8 p1, v1, -0x6

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v2, v0, v1

    aget v3, v0, p1

    sub-float/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget v3, v0, v3

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    sub-float p1, v3, p1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v1, -0x6

    add-int/lit8 v0, v1, 0x6

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v3, v2, v0

    aget v4, v2, p1

    sub-float/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    add-int/lit8 p1, p1, 0x1

    aget p1, v2, p1

    sub-float p1, v0, p1

    move v2, v3

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/shapes/MultiLine;->z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    add-int/lit8 v2, v1, 0x4

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v3, v3

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x5

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v0, p1, v1

    return-void
.end method

.method public getFlip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->s:Z

    return v0
.end method

.method public getMirror()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->r:Z

    return v0
.end method

.method public getNodeCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTint()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public setNodeColor(IF)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x3

    aput p2, v0, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->a(I)V

    :cond_0
    return-void
.end method

.method public setNodePosition(IFF)V
    .locals 1

    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    aput p3, v0, p1

    return-void
.end method

.method public setNodes([F)V
    .locals 1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->setNodes([FI)V

    return-void
.end method

.method public setNodes([FI)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/shapes/MultiLine;->d(I)V

    iput p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v2, v0, 0x6

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/MultiLine;->b:[F

    aget v4, p1, v1

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aput v5, v3, v4

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x3

    aget v1, p1, v1

    aput v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-boolean p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->r:Z

    iput-boolean p3, p0, Lcom/prineside/tdi2/shapes/MultiLine;->s:Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->t:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->u:F

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result p2

    iput p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->w:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p2

    iput p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->w:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    :goto_0
    iget p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    iput p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->x:F

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result p2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->w:F

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p2

    iput p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->x:F

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result p2

    iput p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->v:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->x:F

    :goto_1
    const/4 p1, 0x1

    :goto_2
    iget p2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->f(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setTint(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public setTint(Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->k:Lcom/badlogic/gdx/graphics/Color;

    iput p2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method

.method public updateAllNodes()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/MultiLine;->g(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1
    iget v2, p0, Lcom/prineside/tdi2/shapes/MultiLine;->d:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/shapes/MultiLine;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/MultiLine;->p:Z

    return-void
.end method
