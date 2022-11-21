.class public Lcom/badlogic/gdx/math/DelaunayTriangulator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/IntArray;

.field public b:[F

.field public final c:Lcom/badlogic/gdx/utils/ShortArray;

.field public final d:Lcom/badlogic/gdx/utils/ShortArray;

.field public final e:Lcom/badlogic/gdx/utils/IntArray;

.field public final f:Lcom/badlogic/gdx/utils/BooleanArray;

.field public final g:[F

.field public final h:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->a:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->c:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->d:Lcom/badlogic/gdx/utils/ShortArray;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->e:Lcom/badlogic/gdx/utils/IntArray;

    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->f:Lcom/badlogic/gdx/utils/BooleanArray;

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->g:[F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->h:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public final a(FFFFFFFF)I
    .locals 6

    sub-float v0, p4, p6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p6, p8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x2

    const v3, 0x358637bd    # 1.0E-6f

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    cmpg-float p4, v1, v3

    if-gez p4, :cond_0

    return v2

    :cond_0
    sub-float p4, p7, p5

    neg-float p4, p4

    sub-float v0, p8, p6

    div-float/2addr p4, v0

    add-float/2addr p7, p5

    div-float/2addr p7, v4

    add-float/2addr p8, p6

    div-float/2addr p8, v4

    add-float/2addr p3, p5

    div-float/2addr p3, v4

    sub-float p7, p3, p7

    mul-float p4, p4, p7

    add-float/2addr p4, p8

    goto :goto_1

    :cond_1
    sub-float v0, p5, p3

    neg-float v0, v0

    sub-float v5, p6, p4

    div-float/2addr v0, v5

    add-float/2addr p3, p5

    div-float/2addr p3, v4

    add-float/2addr p4, p6

    div-float/2addr p4, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    add-float/2addr p7, p5

    div-float/2addr p7, v4

    goto :goto_0

    :cond_2
    sub-float v1, p7, p5

    neg-float v1, v1

    sub-float v5, p8, p6

    div-float/2addr v1, v5

    add-float/2addr p7, p5

    div-float/2addr p7, v4

    add-float/2addr p8, p6

    div-float/2addr p8, v4

    mul-float v4, v0, p3

    mul-float p7, p7, v1

    sub-float/2addr v4, p7

    add-float/2addr v4, p8

    sub-float/2addr v4, p4

    sub-float p7, v0, v1

    div-float p7, v4, p7

    :goto_0
    sub-float p3, p7, p3

    mul-float v0, v0, p3

    add-float/2addr p4, v0

    move p3, p7

    :goto_1
    sub-float/2addr p5, p3

    sub-float/2addr p6, p4

    mul-float p5, p5, p5

    mul-float p6, p6, p6

    add-float/2addr p5, p6

    sub-float p6, p1, p3

    mul-float p6, p6, p6

    sub-float/2addr p2, p4

    mul-float p2, p2, p2

    add-float/2addr p2, p6

    sub-float/2addr p2, p5

    cmpg-float p2, p2, v3

    if-gtz p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float p1, p1, p3

    if-lez p1, :cond_4

    cmpl-float p1, p6, p5

    if-lez p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final b([FII[S)I
    .locals 6

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x2

    :cond_0
    :goto_0
    if-ge v1, p3, :cond_3

    :goto_1
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    :goto_2
    aget v2, p1, p3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    add-int/lit8 p3, p3, -0x2

    goto :goto_2

    :cond_2
    if-ge v1, p3, :cond_0

    aget v3, p1, v1

    aput v2, p1, v1

    aput v3, p1, p3

    add-int/lit8 v2, v1, 0x1

    aget v3, p1, v2

    add-int/lit8 v4, p3, 0x1

    aget v5, p1, v4

    aput v5, p1, v2

    aput v3, p1, v4

    div-int/lit8 v2, v1, 0x2

    aget-short v3, p4, v2

    div-int/lit8 v4, p3, 0x2

    aget-short v5, p4, v4

    aput-short v5, p4, v2

    aput-short v3, p4, v4

    goto :goto_0

    :cond_3
    aget v1, p1, p3

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    aput v1, p1, p2

    aput v0, p1, p3

    add-int/lit8 v0, p2, 0x1

    aget v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    aget v3, p1, v2

    aput v3, p1, v0

    aput v1, p1, v2

    div-int/lit8 p2, p2, 0x2

    aget-short p1, p4, p2

    div-int/lit8 v0, p3, 0x2

    aget-short v1, p4, v0

    aput-short v1, p4, p2

    aput-short p1, p4, v0

    :cond_4
    return p3
.end method

.method public final c([FI)V
    .locals 7

    div-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->d:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->d:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    iget-object v1, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->d:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aput-short v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->a:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_1
    :goto_1
    iget p2, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez p2, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result p2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    if-gt p2, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->b([FII[S)I

    move-result v3

    sub-int v4, v3, v2

    sub-int v5, p2, v3

    if-le v4, v5, :cond_3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    if-lt v5, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object p1

    return-object p1
.end method

.method public computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 31

    move-object/from16 v9, p0

    move/from16 v0, p3

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1d

    iget-object v10, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->c:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    return-object v10

    :cond_0
    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    const/4 v11, 0x0

    if-nez p4, :cond_3

    iget-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->b:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    if-ge v1, v0, :cond_2

    :cond_1
    new-array v1, v0, [F

    iput-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->b:[F

    :cond_2
    iget-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->b:[F

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v2, v3, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->b:[F

    invoke-virtual {v9, v1, v0}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->c([FI)V

    move-object v12, v1

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v12, v2

    move v13, v3

    :goto_0
    add-int v14, v13, v0

    aget v1, v12, v11

    const/4 v15, 0x1

    aget v2, v12, v15

    add-int/lit8 v3, v13, 0x2

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_1
    if-ge v5, v14, :cond_8

    aget v6, v12, v5

    cmpg-float v7, v6, v2

    if-gez v7, :cond_4

    move v2, v6

    :cond_4
    cmpl-float v7, v6, v1

    if-lez v7, :cond_5

    move v1, v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    aget v6, v12, v5

    cmpg-float v7, v6, v4

    if-gez v7, :cond_6

    move v4, v6

    :cond_6
    cmpl-float v7, v6, v3

    if-lez v7, :cond_7

    move v3, v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    sub-float v5, v1, v2

    sub-float v6, v3, v4

    cmpl-float v7, v5, v6

    if-lez v7, :cond_9

    goto :goto_2

    :cond_9
    move v5, v6

    :goto_2
    const/high16 v6, 0x41a00000    # 20.0f

    mul-float v5, v5, v6

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    iget-object v8, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->g:[F

    sub-float v2, v1, v5

    aput v2, v8, v11

    sub-float v2, v3, v5

    aput v2, v8, v15

    const/16 v16, 0x2

    aput v1, v8, v16

    add-float/2addr v3, v5

    const/4 v4, 0x3

    aput v3, v8, v4

    add-float/2addr v1, v5

    const/4 v3, 0x4

    aput v1, v8, v3

    const/4 v1, 0x5

    aput v2, v8, v1

    iget-object v7, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->e:Lcom/badlogic/gdx/utils/IntArray;

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    iget-object v6, v9, Lcom/badlogic/gdx/math/DelaunayTriangulator;->f:Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/BooleanArray;->clear()V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/BooleanArray;->ensureCapacity(I)[Z

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    add-int/lit8 v0, v14, 0x2

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    add-int/lit8 v0, v14, 0x4

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    move v5, v13

    :goto_3
    if-ge v5, v14, :cond_16

    aget v17, v12, v5

    add-int/lit8 v0, v5, 0x1

    aget v18, v12, v0

    iget-object v4, v10, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget-object v3, v6, Lcom/badlogic/gdx/utils/BooleanArray;->items:[Z

    iget v0, v10, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    sub-int/2addr v0, v15

    move v2, v0

    :goto_4
    if-ltz v2, :cond_10

    div-int/lit8 v1, v2, 0x3

    aget-boolean v0, v3, v1

    if-eqz v0, :cond_a

    move-object/from16 v27, v3

    move-object/from16 v19, v4

    move/from16 v28, v5

    move-object v1, v6

    move-object/from16 v21, v8

    move-object v0, v10

    move-object/from16 v25, v12

    move/from16 p2, v13

    move/from16 v26, v14

    move v14, v2

    move-object v10, v7

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v0, v2, -0x2

    aget-short v11, v4, v0

    add-int/lit8 v19, v2, -0x1

    aget-short v15, v4, v19

    move/from16 p2, v13

    aget-short v13, v4, v2

    if-lt v11, v14, :cond_b

    sub-int v19, v11, v14

    aget v20, v8, v19

    const/16 v21, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v19, v8, v19

    move/from16 v30, v20

    move/from16 v20, v19

    move/from16 v19, v30

    goto :goto_5

    :cond_b
    const/16 v21, 0x1

    aget v19, v12, v11

    add-int/lit8 v20, v11, 0x1

    aget v20, v12, v20

    :goto_5
    if-lt v15, v14, :cond_c

    sub-int v22, v15, v14

    aget v23, v8, v22

    add-int/lit8 v22, v22, 0x1

    aget v22, v8, v22

    move/from16 v30, v23

    move/from16 v23, v22

    move/from16 v22, v30

    goto :goto_6

    :cond_c
    aget v22, v12, v15

    add-int/lit8 v23, v15, 0x1

    aget v23, v12, v23

    :goto_6
    if-lt v13, v14, :cond_d

    sub-int v24, v13, v14

    aget v25, v8, v24

    add-int/lit8 v24, v24, 0x1

    aget v21, v8, v24

    move/from16 v24, v21

    move/from16 v21, v25

    goto :goto_7

    :cond_d
    aget v21, v12, v13

    add-int/lit8 v24, v13, 0x1

    aget v24, v12, v24

    :goto_7
    move-object/from16 v25, v12

    move v12, v0

    move-object/from16 v0, p0

    move v9, v1

    move/from16 v1, v17

    move/from16 v26, v14

    move v14, v2

    move/from16 v2, v18

    move-object/from16 v27, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move/from16 v4, v20

    move/from16 v28, v5

    move/from16 v5, v22

    move-object/from16 v29, v6

    move/from16 v6, v23

    move-object/from16 v20, v10

    move-object v10, v7

    move/from16 v7, v21

    move-object/from16 v21, v8

    move/from16 v8, v24

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->a(FFFFFFFF)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    goto :goto_9

    :cond_e
    aput-boolean v1, v27, v9

    goto :goto_8

    :cond_f
    invoke-virtual {v10, v11, v15, v15, v13}, Lcom/badlogic/gdx/utils/IntArray;->add(IIII)V

    invoke-virtual {v10, v13, v11}, Lcom/badlogic/gdx/utils/IntArray;->add(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v14}, Lcom/badlogic/gdx/utils/ShortArray;->removeRange(II)V

    move-object/from16 v1, v29

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/BooleanArray;->removeIndex(I)Z

    :goto_9
    add-int/lit8 v2, v14, -0x3

    move-object/from16 v9, p0

    move/from16 v13, p2

    move-object v6, v1

    move-object v7, v10

    move-object/from16 v4, v19

    move-object/from16 v8, v21

    move-object/from16 v12, v25

    move/from16 v14, v26

    move-object/from16 v3, v27

    move/from16 v5, v28

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v10, v0

    goto/16 :goto_4

    :cond_10
    move/from16 v28, v5

    move-object v1, v6

    move-object/from16 v21, v8

    move-object v0, v10

    move-object/from16 v25, v12

    move/from16 p2, v13

    move/from16 v26, v14

    move-object v10, v7

    iget-object v2, v10, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v3, v10, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_15

    aget v5, v2, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    :goto_b
    move/from16 v13, v28

    const/4 v5, 0x0

    goto :goto_d

    :cond_11
    add-int/lit8 v7, v4, 0x1

    aget v8, v2, v7

    add-int/lit8 v9, v4, 0x2

    const/4 v11, 0x0

    :goto_c
    if-ge v9, v3, :cond_13

    add-int/lit8 v12, v9, 0x1

    aget v12, v2, v12

    if-ne v5, v12, :cond_12

    aget v12, v2, v9

    if-ne v8, v12, :cond_12

    aput v6, v2, v9

    const/4 v11, 0x1

    :cond_12
    add-int/lit8 v9, v9, 0x2

    goto :goto_c

    :cond_13
    if-eqz v11, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    aget v5, v2, v7

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    move/from16 v13, v28

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/utils/ShortArray;->add(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    :goto_d
    add-int/lit8 v4, v4, 0x2

    move/from16 v28, v13

    goto :goto_a

    :cond_15
    move/from16 v13, v28

    const/4 v5, 0x0

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    add-int/lit8 v2, v13, 0x2

    move-object/from16 v9, p0

    move/from16 v13, p2

    move-object v6, v1

    move v5, v2

    move-object v7, v10

    move-object/from16 v8, v21

    move-object/from16 v12, v25

    move/from16 v14, v26

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v10, v0

    goto/16 :goto_3

    :cond_16
    move-object v0, v10

    move/from16 p2, v13

    move/from16 v26, v14

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v2, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_e
    if-ltz v2, :cond_19

    aget-short v3, v1, v2

    move/from16 v13, v26

    if-ge v3, v13, :cond_17

    add-int/lit8 v3, v2, -0x1

    aget-short v3, v1, v3

    if-ge v3, v13, :cond_17

    add-int/lit8 v3, v2, -0x2

    aget-short v3, v1, v3

    if-lt v3, v13, :cond_18

    :cond_17
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    :cond_18
    add-int/lit8 v2, v2, -0x3

    move/from16 v26, v13

    goto :goto_e

    :cond_19
    move-object/from16 v2, p0

    if-nez p4, :cond_1a

    iget-object v3, v2, Lcom/badlogic/gdx/math/DelaunayTriangulator;->d:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v4, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v4, :cond_1a

    aget-short v7, v1, v6

    div-int/lit8 v7, v7, 0x2

    aget-short v7, v3, v7

    mul-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    aput-short v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    if-nez p2, :cond_1b

    iget v3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v3, :cond_1c

    aget-short v4, v1, v11

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1b
    iget v3, v0, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    const/4 v11, 0x0

    :goto_11
    if-ge v11, v3, :cond_1c

    aget-short v4, v1, v11

    sub-int v4, v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    aput-short v4, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1c
    return-object v0

    :cond_1d
    move-object v2, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be <= 32767"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :goto_12
    throw v0

    :goto_13
    goto :goto_12
.end method

.method public computeTriangles([FZ)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/math/DelaunayTriangulator;->computeTriangles([FIIZ)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object p1

    return-object p1
.end method

.method public trim(Lcom/badlogic/gdx/utils/ShortArray;[F[FII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iget v3, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, -0x2

    aget-short v5, v2, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, -0x1

    aget-short v7, v2, v6

    mul-int/lit8 v7, v7, 0x2

    aget-short v8, v2, v3

    mul-int/lit8 v8, v8, 0x2

    aget v9, p2, v5

    add-int/lit8 v5, v5, 0x1

    aget v10, p2, v5

    aget v11, p2, v7

    add-int/lit8 v7, v7, 0x1

    aget v12, p2, v7

    aget v13, p2, v8

    add-int/lit8 v8, v8, 0x1

    aget v14, p2, v8

    iget-object v15, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->h:Lcom/badlogic/gdx/math/Vector2;

    invoke-static/range {v9 .. v15}, Lcom/badlogic/gdx/math/GeometryUtils;->triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/badlogic/gdx/math/DelaunayTriangulator;->h:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-static {v8, v9, v10, v7, v5}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    :cond_0
    add-int/lit8 v3, v3, -0x3

    goto :goto_0

    :cond_1
    return-void
.end method
