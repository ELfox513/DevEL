.class public Lcom/badlogic/gdx/utils/compression/lz/BinTree;
.super Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.source "SourceFile"


# static fields
.field public static final s:[I


# instance fields
.field public g:I

.field public h:I

.field public i:I

.field public j:[I

.field public k:[I

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->s:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v2

    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_2

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->s:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->l:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->n:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->o:Z

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->p:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->q:I

    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->r:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .locals 1

    const v0, 0x3ffffeff    # 1.9999694f

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    shr-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->l:I

    add-int/2addr p2, p1

    add-int v0, p2, p3

    add-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    add-int/2addr p4, p3

    invoke-super {p0, p2, p4, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Create(III)V

    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->i:I

    add-int/lit8 p2, p1, 0x1

    iget p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    if-eq p3, p2, :cond_1

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    :cond_1
    const/high16 p2, 0x10000

    iget-boolean p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->o:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    sub-int/2addr p1, p4

    shr-int/lit8 p2, p1, 0x1

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x2

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x4

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    or-int/2addr p1, p2

    shr-int/2addr p1, p4

    const p2, 0xffff

    or-int/2addr p1, p2

    const/high16 p2, 0x1000000

    if-le p1, p2, :cond_2

    shr-int/lit8 p1, p1, 0x1

    :cond_2
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->m:I

    add-int/2addr p1, p4

    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->r:I

    add-int/2addr p2, p1

    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->n:I

    if-eq p2, p1, :cond_4

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->n:I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->k:[I

    :cond_4
    return p4
.end method

.method public GetMatches([I)I
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->i:I

    add-int v3, v1, v2

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    const/4 v5, 0x0

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v4, v1

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->q:I

    if-ge v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    return v5

    :cond_1
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    if-le v1, v3, :cond_2

    sub-int v3, v1, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int v6, v4, v1

    iget-boolean v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->o:Z

    if-eqz v7, :cond_3

    sget-object v8, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->s:[I

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    aget-byte v10, v9, v6

    and-int/lit16 v10, v10, 0xff

    aget v10, v8, v10

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    xor-int/2addr v10, v11

    and-int/lit16 v11, v10, 0x3ff

    add-int/lit8 v12, v6, 0x2

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    xor-int/2addr v10, v12

    const v12, 0xffff

    and-int/2addr v12, v10

    add-int/lit8 v13, v6, 0x3

    aget-byte v9, v9, v13

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x5

    xor-int/2addr v8, v10

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->m:I

    and-int/2addr v8, v9

    goto :goto_2

    :cond_3
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    aget-byte v9, v8, v6

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v6, 0x1

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    xor-int/2addr v8, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->k:[I

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->r:I

    add-int v13, v10, v8

    aget v13, v9, v13

    if-eqz v7, :cond_7

    aget v7, v9, v11

    add-int/lit16 v12, v12, 0x400

    aget v15, v9, v12

    aput v1, v9, v11

    aput v1, v9, v12

    const/4 v11, 0x2

    if-le v7, v3, :cond_4

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v16, v4, v7

    aget-byte v14, v12, v16

    aget-byte v12, v12, v6

    if-ne v14, v12, :cond_4

    aput v11, p1, v5

    sub-int v12, v1, v7

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aput v12, p1, v14

    const/4 v12, 0x2

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_3
    if-le v15, v3, :cond_6

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v18, v4, v15

    aget-byte v14, v5, v18

    aget-byte v5, v5, v6

    if-ne v14, v5, :cond_6

    if-ne v15, v7, :cond_5

    add-int/lit8 v11, v11, -0x2

    :cond_5
    add-int/lit8 v5, v11, 0x1

    const/4 v7, 0x3

    aput v7, p1, v11

    add-int/lit8 v11, v5, 0x1

    sub-int v12, v1, v15

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    aput v12, p1, v5

    move v7, v15

    const/4 v12, 0x3

    :cond_6
    if-eqz v11, :cond_8

    if-ne v7, v13, :cond_8

    add-int/lit8 v11, v11, -0x2

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x1

    :cond_8
    add-int/2addr v10, v8

    aput v1, v9, v10

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    shl-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    add-int/2addr v7, v8

    shl-int/2addr v5, v8

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->p:I

    if-eqz v8, :cond_9

    if-le v13, v3, :cond_9

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int/2addr v4, v13

    add-int/2addr v4, v8

    aget-byte v4, v9, v4

    add-int v10, v6, v8

    aget-byte v9, v9, v10

    if-eq v4, v9, :cond_9

    add-int/lit8 v4, v11, 0x1

    aput v8, p1, v11

    add-int/lit8 v11, v4, 0x1

    sub-int/2addr v1, v13

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    aput v1, p1, v4

    move v12, v8

    :cond_9
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->l:I

    move v4, v8

    :goto_5
    if-le v13, v3, :cond_12

    add-int/lit8 v9, v1, -0x1

    if-nez v1, :cond_a

    goto/16 :goto_b

    :cond_a
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    sub-int/2addr v1, v13

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    if-gt v1, v10, :cond_b

    sub-int/2addr v10, v1

    goto :goto_6

    :cond_b
    sub-int/2addr v10, v1

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    add-int/2addr v10, v14

    :goto_6
    const/4 v14, 0x1

    shl-int/2addr v10, v14

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v15, v13

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v19, v15, v17

    move/from16 v20, v3

    aget-byte v3, v14, v19

    add-int v19, v6, v17

    aget-byte v14, v14, v19

    if-ne v3, v14, :cond_10

    :goto_7
    const/4 v3, 0x1

    add-int/lit8 v14, v17, 0x1

    if-eq v14, v2, :cond_d

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v18, v15, v14

    move/from16 v19, v4

    aget-byte v4, v3, v18

    add-int v18, v6, v14

    aget-byte v3, v3, v18

    if-eq v4, v3, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v17, v14

    move/from16 v4, v19

    goto :goto_7

    :cond_d
    move/from16 v19, v4

    :goto_8
    if-ge v12, v14, :cond_f

    add-int/lit8 v3, v11, 0x1

    aput v14, p1, v11

    add-int/lit8 v11, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v3

    if-ne v14, v2, :cond_e

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    aget v2, v1, v10

    aput v2, v1, v5

    const/4 v3, 0x1

    add-int/2addr v10, v3

    aget v2, v1, v10

    aput v2, v1, v7

    goto :goto_c

    :cond_e
    const/4 v3, 0x1

    move v12, v14

    move/from16 v17, v12

    goto :goto_9

    :cond_f
    const/4 v3, 0x1

    move/from16 v17, v14

    goto :goto_9

    :cond_10
    move/from16 v19, v4

    const/4 v3, 0x1

    :goto_9
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v15, v15, v17

    aget-byte v4, v1, v15

    and-int/lit16 v4, v4, 0xff

    add-int v14, v6, v17

    aget-byte v1, v1, v14

    and-int/lit16 v1, v1, 0xff

    if-ge v4, v1, :cond_11

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    aput v13, v1, v5

    add-int/lit8 v10, v10, 0x1

    aget v1, v1, v10

    move v13, v1

    move v5, v10

    move/from16 v4, v17

    goto :goto_a

    :cond_11
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    aput v13, v1, v7

    aget v1, v1, v10

    move v13, v1

    move v7, v10

    move/from16 v8, v17

    move/from16 v4, v19

    :goto_a
    move v1, v9

    move/from16 v3, v20

    goto/16 :goto_5

    :cond_12
    :goto_b
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    const/4 v2, 0x0

    aput v2, v1, v5

    aput v2, v1, v7

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    return v11
.end method

.method public Init()V
    .locals 3

    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Init()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->n:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->k:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->ReduceOffsets(I)V

    return-void
.end method

.method public MovePos()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MovePos()V

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->b()V

    :cond_1
    return-void
.end method

.method public SetCutValue(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->l:I

    return-void
.end method

.method public SetType(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->o:Z

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->p:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->q:I

    const p1, 0x10400

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->r:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->p:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->q:I

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->r:I

    :goto_1
    return-void
.end method

.method public Skip(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->i:I

    add-int v4, v2, v3

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    if-gt v4, v5, :cond_1

    goto :goto_0

    :cond_1
    sub-int v3, v5, v2

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->q:I

    if-ge v3, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    goto/16 :goto_8

    :cond_2
    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    if-le v2, v4, :cond_3

    sub-int v4, v2, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v6, v2

    iget-boolean v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->o:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->s:[I

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    aget-byte v9, v8, v6

    and-int/lit16 v9, v9, 0xff

    aget v9, v7, v9

    add-int/lit8 v10, v6, 0x1

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v9, v10

    and-int/lit16 v10, v9, 0x3ff

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->k:[I

    aput v2, v11, v10

    add-int/lit8 v10, v6, 0x2

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    const v10, 0xffff

    and-int/2addr v10, v9

    add-int/lit16 v10, v10, 0x400

    aput v2, v11, v10

    add-int/lit8 v10, v6, 0x3

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x5

    xor-int/2addr v7, v9

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->m:I

    and-int/2addr v7, v8

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    aget-byte v8, v7, v6

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v6, 0x1

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v7, v8

    :goto_2
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->k:[I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->r:I

    add-int v10, v9, v7

    aget v10, v8, v10

    add-int/2addr v9, v7

    aput v2, v8, v9

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    shl-int/lit8 v7, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v2, v2, 0x1

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->p:I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->l:I

    move v11, v10

    move v10, v9

    move v9, v8

    :goto_3
    if-le v11, v4, :cond_b

    add-int/lit8 v12, v10, -0x1

    if-nez v10, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    sub-int/2addr v10, v11

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->g:I

    if-gt v10, v13, :cond_6

    sub-int/2addr v13, v10

    goto :goto_4

    :cond_6
    sub-int/2addr v13, v10

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    add-int/2addr v13, v10

    :goto_4
    shl-int/lit8 v10, v13, 0x1

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v13, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v16, v13, v14

    aget-byte v5, v15, v16

    add-int v16, v6, v14

    aget-byte v15, v15, v16

    if-ne v5, v15, :cond_9

    :cond_7
    add-int/lit8 v14, v14, 0x1

    if-eq v14, v3, :cond_8

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v15, v13, v14

    aget-byte v15, v5, v15

    add-int v16, v6, v14

    aget-byte v5, v5, v16

    if-eq v15, v5, :cond_7

    :cond_8
    if-ne v14, v3, :cond_9

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    aget v4, v3, v10

    aput v4, v3, v2

    add-int/lit8 v10, v10, 0x1

    aget v2, v3, v10

    aput v2, v3, v7

    goto :goto_7

    :cond_9
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int/2addr v13, v14

    aget-byte v13, v5, v13

    and-int/lit16 v13, v13, 0xff

    add-int v15, v6, v14

    aget-byte v5, v5, v15

    and-int/lit16 v5, v5, 0xff

    if-ge v13, v5, :cond_a

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    aput v11, v5, v2

    add-int/lit8 v10, v10, 0x1

    aget v2, v5, v10

    move v11, v2

    move v2, v10

    move v9, v14

    goto :goto_5

    :cond_a
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    aput v11, v5, v7

    aget v5, v5, v10

    move v11, v5

    move v7, v10

    move v8, v14

    :goto_5
    move v10, v12

    goto :goto_3

    :cond_b
    :goto_6
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    aput v4, v3, v7

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->h:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->j:[I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->c([III)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->k:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->n:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->c([III)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->ReduceOffsets(I)V

    return-void
.end method

.method public c([III)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p1, v1

    if-gt v2, p3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    sub-int/2addr v2, p3

    :goto_1
    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
