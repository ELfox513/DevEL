.class public Lcom/prineside/tdi2/shapes/StraightMultiLine;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/StraightMultiLine$StraightMultiLineFactory;
    }
.end annotation


# static fields
.field public static final t:Lcom/badlogic/gdx/graphics/Color;

.field public static final u:Lcom/badlogic/gdx/math/Vector2;

.field public static final v:Lcom/badlogic/gdx/math/Vector2;

.field public static final w:Lcom/badlogic/gdx/math/Vector2;

.field public static final x:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:[F

.field public b:[F

.field public d:I

.field public k:F

.field public final p:Lcom/badlogic/gdx/graphics/Color;

.field public q:Z

.field public r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->t:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->u:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->v:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->x:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    iput v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->k:F

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/StraightMultiLine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 v1, p1, 0x5

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    add-int/lit8 v0, v0, 0x2

    aget v0, v2, v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

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

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    add-int/lit8 v1, v1, 0x2

    aget v1, v2, v1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

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

    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v2, p1, 0x14

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v4, v2, 0x2

    aput v1, v3, v4

    add-int/lit8 v4, v2, 0x7

    aput v1, v3, v4

    add-int/lit8 v4, v2, 0xc

    aput v1, v3, v4

    add-int/lit8 v2, v2, 0x11

    aput v1, v3, v2

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x14

    add-int/lit8 v4, v2, 0x2

    aput v0, v3, v4

    add-int/lit8 v4, v2, 0x7

    aput v1, v3, v4

    add-int/lit8 v4, v2, 0xc

    aput v1, v3, v4

    add-int/lit8 v2, v2, 0x11

    aput v0, v3, v2

    add-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x14

    add-int/lit8 v1, p1, 0x2

    aput v0, v3, v1

    add-int/lit8 v1, p1, 0x7

    aput v0, v3, v1

    add-int/lit8 v1, p1, 0xc

    aput v0, v3, v1

    add-int/lit8 p1, p1, 0x11

    aput v0, v3, p1

    return-void
.end method

.method public appendNode(FFFZ)V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d(I)V

    iget v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    iget-object v2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    aput p1, v2, v1

    add-int/lit8 p1, v1, 0x1

    aput p2, v2, p1

    add-int/lit8 v1, v1, 0x2

    aput p3, v2, v1

    if-eqz p4, :cond_1

    if-eqz v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->e(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->e(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a(I)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public final c(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public final d(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->c(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    :cond_0
    mul-int/lit8 p1, p1, 0x5

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    array-length v0, v0

    if-ge v0, p1, :cond_1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    new-array p1, p1, [F

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->c(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x14

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->f(I)V

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->f(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public final f(I)V
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, p1, 0x5

    const/4 v2, 0x1

    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v4, v3, 0x5

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v5

    iget-object v6, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v6

    iget-object v7, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v7

    iget-object v8, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v8

    iget-object v9, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v9

    iget-object v10, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v10

    iget-object v11, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v11

    iget-object v12, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v12

    iget-object v13, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    aget v14, v13, v4

    add-int/2addr v4, v2

    aget v4, v13, v4

    aget v15, v13, v1

    add-int/2addr v1, v2

    aget v1, v13, v1

    sget-object v13, Lcom/prineside/tdi2/shapes/StraightMultiLine;->u:Lcom/badlogic/gdx/math/Vector2;

    sub-float v2, v15, v14

    move/from16 p1, v7

    sub-float v7, v1, v4

    invoke-virtual {v13, v2, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v7, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->k:F

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/prineside/tdi2/shapes/StraightMultiLine;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    move/from16 v16, v6

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector2;->rotate90(I)Lcom/badlogic/gdx/math/Vector2;

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v6, v3, 0x14

    sget-object v7, Lcom/prineside/tdi2/shapes/StraightMultiLine;->w:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v17, v8

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    move/from16 v18, v5

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v8, v14, v4}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    iget v5, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v5, v8, v6

    add-int/lit8 v5, v6, 0x1

    move/from16 v19, v4

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v8, v5

    add-int/lit8 v4, v6, 0x3

    aput v9, v8, v4

    add-int/lit8 v4, v6, 0x4

    aput v12, v8, v4

    iget v4, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v4, v4

    iget v5, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v5, v5

    invoke-virtual {v7, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v5, v6, 0x5

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v4, v5

    add-int/lit8 v5, v6, 0x6

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v4, v5

    add-int/lit8 v5, v6, 0x8

    aput v10, v4, v5

    add-int/lit8 v5, v6, 0x9

    aput v12, v4, v5

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v5

    invoke-virtual {v7, v4, v8}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v8, v6, 0xa

    iget v5, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v5, v4, v8

    add-int/lit8 v5, v6, 0xb

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v4, v5

    add-int/lit8 v5, v6, 0xd

    aput v10, v4, v5

    add-int/lit8 v5, v6, 0xe

    aput v11, v4, v5

    iget v4, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v5, v6, 0xf

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v4, v5

    add-int/lit8 v5, v6, 0x10

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v4, v5

    add-int/lit8 v5, v6, 0x12

    aput v9, v4, v5

    add-int/lit8 v6, v6, 0x13

    aput v11, v4, v6

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v4, v4, 0x14

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v5, v15, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    iget v6, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v6, v5, v4

    add-int/lit8 v6, v4, 0x1

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0x3

    aput v18, v5, v6

    add-int/lit8 v6, v4, 0x4

    aput v17, v5, v6

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    move/from16 v6, v19

    invoke-virtual {v5, v14, v6}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v6, v4, 0x5

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0x6

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0x8

    aput v16, v5, v6

    add-int/lit8 v6, v4, 0x9

    aput v17, v5, v6

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v8, v8, v6

    invoke-virtual {v7, v5, v8}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v6, v4, 0xa

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0xb

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0xd

    aput v16, v5, v6

    add-int/lit8 v6, v4, 0xe

    aput p1, v5, v6

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v5, v15, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v6, v4, 0xf

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0x10

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v8, v5, v6

    add-int/lit8 v6, v4, 0x12

    aput v18, v5, v6

    add-int/lit8 v4, v4, 0x13

    aput p1, v5, v4

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x14

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v15, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v5, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    iget v5, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v5, v4, v3

    add-int/lit8 v5, v3, 0x1

    iget v6, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v6, v4, v5

    add-int/lit8 v5, v3, 0x3

    aput v10, v4, v5

    add-int/lit8 v5, v3, 0x4

    aput v12, v4, v5

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v15, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v4, v3, 0x5

    iget v5, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x6

    iget v5, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x8

    aput v9, v1, v4

    add-int/lit8 v4, v3, 0x9

    aput v12, v1, v4

    iget v1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v1, v1, v4

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v2, v2, v4

    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v2, v3, 0xa

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0xb

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0xd

    aput v9, v1, v2

    add-int/lit8 v2, v3, 0xe

    aput v11, v1, v2

    iget v1, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a:[F

    add-int/lit8 v2, v3, 0xf

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0x10

    iget v4, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0x12

    aput v10, v1, v2

    add-int/lit8 v3, v3, 0x13

    aput v11, v1, v3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public getMainTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getNodeCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    return v0
.end method

.method public getTint()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public setNodeColor(IF)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput p2, v0, v1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->a(I)V

    :cond_0
    return-void
.end method

.method public setNodePosition(IFF)V
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    aput p3, v0, p1

    return-void
.end method

.method public setNodes([F)V
    .locals 1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->setNodes([FI)V

    return-void
.end method

.method public setNodes([FI)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d(I)V

    iput p2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v2, v0, 0x5

    iget-object v3, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->b:[F

    aget v4, p1, v1

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v1, p1, v1

    aput v1, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->updateAllNodes()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 p1, 0x1

    :goto_0
    iget p2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->f(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTint(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

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

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public setTint(Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

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

    iget-object p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->p:Lcom/badlogic/gdx/graphics/Color;

    iput p2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->k:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->updateAllNodes()V

    return-void
.end method

.method public updateAllNodes()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->d:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/shapes/StraightMultiLine;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/StraightMultiLine;->q:Z

    return-void
.end method
