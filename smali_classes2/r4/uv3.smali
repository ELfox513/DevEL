.class public final Lr4/uv3;
.super Lr4/yv3;
.source "SourceFile"


# static fields
.field public static final f:Lr4/b53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/b53<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lr4/b53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/b53<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lr4/ov3;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/ev3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/iv3;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lr4/b53;->c(Ljava/util/Comparator;)Lr4/b53;

    move-result-object v0

    sput-object v0, Lr4/uv3;->f:Lr4/b53;

    sget-object v0, Lr4/jv3;->a:Ljava/util/Comparator;

    invoke-static {v0}, Lr4/b53;->c(Ljava/util/Comparator;)Lr4/b53;

    move-result-object v0

    sput-object v0, Lr4/uv3;->g:Lr4/b53;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lr4/ev3;

    invoke-direct {v0}, Lr4/ev3;-><init>()V

    invoke-static {p1}, Lr4/ov3;->c(Landroid/content/Context;)Lr4/ov3;

    move-result-object p1

    invoke-direct {p0}, Lr4/yv3;-><init>()V

    iput-object v0, p0, Lr4/uv3;->e:Lr4/ev3;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/uv3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic g()Lr4/b53;
    .locals 1

    sget-object v0, Lr4/uv3;->f:Lr4/b53;

    return-object v0
.end method

.method public static synthetic h()Lr4/b53;
    .locals 1

    sget-object v0, Lr4/uv3;->g:Lr4/b53;

    return-object v0
.end method

.method public static k(IZ)Z
    .locals 3

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Lr4/e5;Ljava/lang/String;Z)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/e5;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lr4/uv3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lr4/e5;->c:Ljava/lang/String;

    invoke-static {p0}, Lr4/uv3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "-"

    invoke-static {p0, p2}, Lr4/lc;->Z(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-static {p1, p2}, Lr4/lc;->Z(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method


# virtual methods
.method public final f(Lr4/xv3;[[[I[ILr4/ft3;Lr4/e8;)Landroid/util/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/xv3;",
            "[[[I[I",
            "Lr4/ft3;",
            "Lr4/e8;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lr4/i7;",
            "[",
            "Lr4/hv3;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr4/uv3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ov3;

    const/4 v3, 0x2

    new-array v4, v3, [Lr4/vv3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v6, v3, :cond_1a

    invoke-virtual {v1, v6}, Lr4/xv3;->a(I)I

    move-result v12

    if-ne v12, v3, :cond_19

    if-nez v7, :cond_17

    invoke-virtual {v1, v6}, Lr4/xv3;->b(I)Lr4/j44;

    move-result-object v7

    aget-object v12, p2, v6

    aget v13, p3, v6

    iget-boolean v13, v2, Lr4/n84;->v:Z

    const/4 v13, 0x0

    :goto_1
    iget v14, v7, Lr4/j44;->a:I

    if-ge v13, v14, :cond_0

    invoke-virtual {v7, v13}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v14

    aget-object v15, v12, v13

    iget v14, v14, Lr4/h24;->a:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    :goto_2
    iget v10, v7, Lr4/j44;->a:I

    if-ge v13, v10, :cond_14

    invoke-virtual {v7, v13}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v10

    iget v3, v2, Lr4/n84;->i:I

    iget v5, v2, Lr4/n84;->j:I

    iget-boolean v9, v2, Lr4/n84;->k:Z

    move-object/from16 v17, v7

    new-instance v7, Ljava/util/ArrayList;

    iget v0, v10, Lr4/h24;->a:I

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_3
    if-gtz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_1
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_e

    if-ne v5, v0, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v11, 0x0

    :goto_4
    if-gtz v11, :cond_b

    move/from16 v19, v8

    invoke-virtual {v10, v11}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v8

    iget v1, v8, Lr4/e5;->q:I

    if-lez v1, :cond_9

    move-object/from16 v20, v4

    iget v4, v8, Lr4/e5;->r:I

    if-lez v4, :cond_8

    if-eqz v9, :cond_5

    if-gt v1, v4, :cond_3

    move/from16 v21, v9

    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    move/from16 v21, v9

    const/4 v9, 0x1

    :goto_5
    if-gt v3, v5, :cond_4

    move/from16 v22, v3

    const/4 v3, 0x0

    goto :goto_6

    :cond_4
    move/from16 v22, v3

    const/4 v3, 0x1

    :goto_6
    if-eq v9, v3, :cond_6

    move v9, v5

    move/from16 v23, v9

    move/from16 v3, v22

    goto :goto_7

    :cond_5
    move/from16 v22, v3

    move/from16 v21, v9

    :cond_6
    move v3, v5

    move/from16 v23, v3

    move/from16 v9, v22

    :goto_7
    mul-int v5, v1, v3

    move/from16 v24, v6

    mul-int v6, v4, v9

    if-lt v5, v6, :cond_7

    new-instance v3, Landroid/graphics/Point;

    invoke-static {v6, v1}, Lr4/lc;->b0(II)I

    move-result v1

    invoke-direct {v3, v9, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_8

    :cond_7
    new-instance v1, Landroid/graphics/Point;

    invoke-static {v5, v4}, Lr4/lc;->b0(II)I

    move-result v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v1

    :goto_8
    iget v1, v8, Lr4/e5;->q:I

    iget v4, v8, Lr4/e5;->r:I

    mul-int v5, v1, v4

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v8, 0x3f7ae148    # 0.98f

    mul-float v6, v6, v8

    float-to-int v6, v6

    if-lt v1, v6, :cond_a

    iget v1, v3, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    if-lt v4, v1, :cond_a

    if-ge v5, v0, :cond_a

    move v0, v5

    goto :goto_a

    :cond_8
    move/from16 v22, v3

    goto :goto_9

    :cond_9
    move/from16 v22, v3

    move-object/from16 v20, v4

    :goto_9
    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v21, v9

    :cond_a
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v8, v19

    move-object/from16 v4, v20

    move/from16 v9, v21

    move/from16 v3, v22

    move/from16 v5, v23

    move/from16 v6, v24

    goto/16 :goto_4

    :cond_b
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_f

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_b
    if-ltz v1, :cond_f

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v4}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v4

    invoke-virtual {v4}, Lr4/e5;->c()I

    move-result v4

    if-eq v4, v3, :cond_c

    if-le v4, v0, :cond_d

    :cond_c
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    goto :goto_b

    :cond_e
    :goto_c
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    :cond_f
    aget-object v0, v12, v13

    move-object/from16 v1, v16

    const/4 v3, 0x0

    :goto_d
    if-gtz v3, :cond_13

    invoke-virtual {v10, v3}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v4

    iget v5, v4, Lr4/e5;->e:I

    aget v5, v0, v3

    iget-boolean v6, v2, Lr4/ov3;->I:Z

    invoke-static {v5, v6}, Lr4/uv3;->k(IZ)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Lr4/tv3;

    aget v6, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {v5, v4, v2, v6, v8}, Lr4/tv3;-><init>(Lr4/e5;Lr4/ov3;IZ)V

    iget-boolean v4, v5, Lr4/tv3;->a:Z

    if-nez v4, :cond_10

    iget-boolean v4, v2, Lr4/ov3;->B:Z

    if-nez v4, :cond_10

    goto :goto_e

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v5, v1}, Lr4/tv3;->c(Lr4/tv3;)I

    move-result v4

    if-lez v4, :cond_12

    :cond_11
    move v15, v3

    move-object v1, v5

    move-object v14, v10

    :cond_12
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object/from16 v7, v17

    move/from16 v8, v19

    move-object/from16 v4, v20

    move/from16 v6, v24

    const/4 v3, 0x2

    const/4 v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v20, v4

    move/from16 v24, v6

    move/from16 v19, v8

    if-nez v14, :cond_15

    const/4 v10, 0x0

    goto :goto_f

    :cond_15
    new-instance v10, Lr4/vv3;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput v15, v1, v0

    invoke-direct {v10, v14, v1, v0}, Lr4/vv3;-><init>(Lr4/h24;[II)V

    :goto_f
    aput-object v10, v20, v24

    if-eqz v10, :cond_16

    move-object/from16 v0, p1

    move/from16 v5, v24

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    move-object/from16 v0, p1

    move/from16 v5, v24

    const/4 v7, 0x0

    goto :goto_10

    :cond_17
    move-object/from16 v20, v4

    move/from16 v19, v8

    move-object/from16 v0, p1

    move v5, v6

    :goto_10
    invoke-virtual {v0, v5}, Lr4/xv3;->b(I)Lr4/j44;

    move-result-object v1

    iget v1, v1, Lr4/j44;->a:I

    if-lez v1, :cond_18

    const/4 v11, 0x1

    goto :goto_11

    :cond_18
    const/4 v11, 0x0

    :goto_11
    or-int v8, v19, v11

    goto :goto_12

    :cond_19
    move-object v0, v1

    move-object/from16 v20, v4

    move v5, v6

    move/from16 v19, v8

    :goto_12
    add-int/lit8 v6, v5, 0x1

    move-object v1, v0

    move-object/from16 v4, v20

    const/4 v3, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1a
    move-object v0, v1

    move-object/from16 v20, v4

    move/from16 v19, v8

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    const/4 v6, 0x2

    if-ge v4, v6, :cond_2c

    invoke-virtual {v0, v4}, Lr4/xv3;->a(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2b

    iget-boolean v6, v2, Lr4/ov3;->K:Z

    if-nez v6, :cond_1c

    if-nez v19, :cond_1b

    goto :goto_14

    :cond_1b
    const/4 v6, 0x0

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v6, 0x1

    :goto_15
    invoke-virtual {v0, v4}, Lr4/xv3;->b(I)Lr4/j44;

    move-result-object v7

    aget-object v8, p2, v4

    aget v9, p3, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_16
    iget v13, v7, Lr4/j44;->a:I

    if-ge v10, v13, :cond_21

    invoke-virtual {v7, v10}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v13

    aget-object v14, v8, v10

    move/from16 v16, v11

    const/4 v15, 0x0

    :goto_17
    iget v11, v13, Lr4/h24;->a:I

    if-gtz v15, :cond_20

    aget v11, v14, v15

    move/from16 v17, v12

    iget-boolean v12, v2, Lr4/ov3;->I:Z

    invoke-static {v11, v12}, Lr4/uv3;->k(IZ)Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-virtual {v13, v15}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v11

    new-instance v12, Lr4/kv3;

    move-object/from16 v18, v13

    aget v13, v14, v15

    invoke-direct {v12, v11, v2, v13}, Lr4/kv3;-><init>(Lr4/e5;Lr4/ov3;I)V

    if-eqz v9, :cond_1d

    invoke-virtual {v12, v9}, Lr4/kv3;->c(Lr4/kv3;)I

    move-result v11

    if-lez v11, :cond_1f

    :cond_1d
    move/from16 v16, v10

    move-object v9, v12

    move v12, v15

    goto :goto_18

    :cond_1e
    move-object/from16 v18, v13

    :cond_1f
    move/from16 v12, v17

    :goto_18
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v18

    goto :goto_17

    :cond_20
    move/from16 v17, v12

    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    goto :goto_16

    :cond_21
    const/4 v10, -0x1

    if-ne v11, v10, :cond_22

    const/4 v6, 0x0

    goto/16 :goto_1c

    :cond_22
    invoke-virtual {v7, v11}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v7

    if-eqz v6, :cond_26

    aget-object v6, v8, v11

    invoke-virtual {v7, v12}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v8

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_19
    if-gtz v10, :cond_25

    if-eq v10, v12, :cond_23

    invoke-virtual {v7, v10}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v14

    aget v15, v6, v10

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lr4/uv3;->k(IZ)Z

    move-result v15

    if-eqz v15, :cond_24

    iget v6, v14, Lr4/e5;->h:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_24

    iget v6, v14, Lr4/e5;->y:I

    if-eq v6, v15, :cond_24

    iget v15, v8, Lr4/e5;->y:I

    if-ne v6, v15, :cond_24

    iget-object v6, v14, Lr4/e5;->l:Ljava/lang/String;

    if-eqz v6, :cond_24

    iget-object v15, v8, Lr4/e5;->l:Ljava/lang/String;

    invoke-static {v6, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    iget v6, v14, Lr4/e5;->z:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_24

    iget v14, v8, Lr4/e5;->z:I

    if-ne v6, v14, :cond_24

    goto :goto_1a

    :cond_23
    move-object/from16 v16, v6

    :goto_1a
    add-int/lit8 v6, v13, 0x1

    aput v10, v11, v13

    move v13, v6

    :cond_24
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v16

    goto :goto_19

    :cond_25
    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    array-length v8, v6

    const/4 v10, 0x1

    if-le v8, v10, :cond_27

    new-instance v8, Lr4/vv3;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v6, v11}, Lr4/vv3;-><init>(Lr4/h24;[II)V

    goto :goto_1b

    :cond_26
    const/4 v10, 0x1

    :cond_27
    const/4 v11, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-nez v8, :cond_28

    new-instance v8, Lr4/vv3;

    new-array v6, v10, [I

    aput v12, v6, v11

    invoke-direct {v8, v7, v6, v11}, Lr4/vv3;-><init>(Lr4/h24;[II)V

    :cond_28
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_1c
    if-eqz v6, :cond_2b

    if-eqz v1, :cond_29

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lr4/kv3;

    invoke-virtual {v7, v1}, Lr4/kv3;->c(Lr4/kv3;)I

    move-result v7

    if-lez v7, :cond_2b

    :cond_29
    const/4 v1, -0x1

    if-eq v3, v1, :cond_2a

    const/4 v1, 0x0

    aput-object v1, v20, v3

    :cond_2a
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lr4/vv3;

    aput-object v1, v20, v4

    iget-object v3, v1, Lr4/vv3;->a:Lr4/h24;

    iget-object v1, v1, Lr4/vv3;->b:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v1

    iget-object v1, v1, Lr4/e5;->c:Ljava/lang/String;

    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lr4/kv3;

    move-object v5, v1

    move-object v1, v3

    move v3, v4

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_2c
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v6, :cond_3d

    invoke-virtual {v0, v4}, Lr4/xv3;->a(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3c

    if-eq v7, v6, :cond_3c

    const/4 v6, 0x3

    if-eq v7, v6, :cond_33

    invoke-virtual {v0, v4}, Lr4/xv3;->b(I)Lr4/j44;

    move-result-object v6

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1e
    iget v12, v6, Lr4/j44;->a:I

    if-ge v10, v12, :cond_31

    invoke-virtual {v6, v10}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v12

    aget-object v13, v7, v10

    const/4 v14, 0x0

    :goto_1f
    iget v15, v12, Lr4/h24;->a:I

    if-gtz v14, :cond_30

    aget v15, v13, v14

    move-object/from16 p3, v6

    iget-boolean v6, v2, Lr4/ov3;->I:Z

    invoke-static {v15, v6}, Lr4/uv3;->k(IZ)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual {v12, v14}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v6

    new-instance v15, Lr4/mv3;

    move-object/from16 v16, v7

    aget v7, v13, v14

    invoke-direct {v15, v6, v7}, Lr4/mv3;-><init>(Lr4/e5;I)V

    if-eqz v9, :cond_2d

    invoke-virtual {v15, v9}, Lr4/mv3;->c(Lr4/mv3;)I

    move-result v6

    if-lez v6, :cond_2f

    :cond_2d
    move-object v8, v12

    move v11, v14

    move-object v9, v15

    goto :goto_20

    :cond_2e
    move-object/from16 v16, v7

    :cond_2f
    :goto_20
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    goto :goto_1f

    :cond_30
    move-object/from16 p3, v6

    move-object/from16 v16, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_31
    if-nez v8, :cond_32

    const/4 v6, 0x0

    goto :goto_21

    :cond_32
    new-instance v6, Lr4/vv3;

    const/4 v7, 0x1

    new-array v9, v7, [I

    const/4 v7, 0x0

    aput v11, v9, v7

    invoke-direct {v6, v8, v9, v7}, Lr4/vv3;-><init>(Lr4/h24;[II)V

    :goto_21
    aput-object v6, v20, v4

    goto/16 :goto_26

    :cond_33
    invoke-virtual {v0, v4}, Lr4/xv3;->b(I)Lr4/j44;

    move-result-object v6

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_22
    iget v12, v6, Lr4/j44;->a:I

    if-ge v11, v12, :cond_38

    invoke-virtual {v6, v11}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v12

    aget-object v13, v7, v11

    const/4 v14, 0x0

    :goto_23
    iget v15, v12, Lr4/h24;->a:I

    if-gtz v14, :cond_37

    aget v15, v13, v14

    move-object/from16 p3, v6

    iget-boolean v6, v2, Lr4/ov3;->I:Z

    invoke-static {v15, v6}, Lr4/uv3;->k(IZ)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v12, v14}, Lr4/h24;->a(I)Lr4/e5;

    move-result-object v6

    new-instance v15, Lr4/sv3;

    move-object/from16 v16, v7

    aget v7, v13, v14

    invoke-direct {v15, v6, v2, v7, v5}, Lr4/sv3;-><init>(Lr4/e5;Lr4/ov3;ILjava/lang/String;)V

    iget-boolean v6, v15, Lr4/sv3;->a:Z

    if-eqz v6, :cond_36

    if-eqz v9, :cond_34

    invoke-virtual {v15, v9}, Lr4/sv3;->c(Lr4/sv3;)I

    move-result v6

    if-lez v6, :cond_36

    :cond_34
    move-object v8, v12

    move v10, v14

    move-object v9, v15

    goto :goto_24

    :cond_35
    move-object/from16 v16, v7

    :cond_36
    :goto_24
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v16

    goto :goto_23

    :cond_37
    move-object/from16 p3, v6

    move-object/from16 v16, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_38
    if-nez v8, :cond_39

    const/4 v6, 0x0

    goto :goto_25

    :cond_39
    new-instance v6, Lr4/vv3;

    const/4 v7, 0x1

    new-array v11, v7, [I

    const/4 v7, 0x0

    aput v10, v11, v7

    invoke-direct {v6, v8, v11, v7}, Lr4/vv3;-><init>(Lr4/h24;[II)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_25
    if-eqz v6, :cond_3c

    if-eqz v1, :cond_3a

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lr4/sv3;

    invoke-virtual {v7, v1}, Lr4/sv3;->c(Lr4/sv3;)I

    move-result v7

    if-lez v7, :cond_3c

    :cond_3a
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3b

    const/4 v1, 0x0

    aput-object v1, v20, v3

    :cond_3b
    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lr4/vv3;

    aput-object v1, v20, v4

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lr4/sv3;

    move v3, v4

    goto :goto_27

    :cond_3c
    :goto_26
    const/4 v7, -0x1

    :goto_27
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1d

    :cond_3d
    const/4 v1, 0x0

    :goto_28
    const/4 v3, 0x2

    if-ge v1, v3, :cond_42

    invoke-virtual {v0, v1}, Lr4/xv3;->a(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lr4/ov3;->d(I)Z

    move-result v4

    if-nez v4, :cond_41

    iget-object v4, v2, Lr4/n84;->w:Lr4/y33;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lr4/j33;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_2a

    :cond_3e
    invoke-virtual {v0, v1}, Lr4/xv3;->b(I)Lr4/j44;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lr4/ov3;->e(ILr4/j44;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v2, v1, v3}, Lr4/ov3;->f(ILr4/j44;)Lr4/rv3;

    move-result-object v4

    if-nez v4, :cond_3f

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_29

    :cond_3f
    new-instance v4, Lr4/vv3;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lr4/j44;->a(I)Lr4/h24;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v5}, Lr4/vv3;-><init>(Lr4/h24;[II)V

    :goto_29
    aput-object v4, v20, v1

    goto :goto_2b

    :cond_40
    const/4 v6, 0x0

    goto :goto_2b

    :cond_41
    :goto_2a
    const/4 v6, 0x0

    aput-object v6, v20, v1

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_42
    move-object/from16 v1, p0

    const/4 v6, 0x0

    iget-object v3, v1, Lr4/uv3;->e:Lr4/ev3;

    invoke-virtual/range {p0 .. p0}, Lr4/aw3;->e()Lr4/kw3;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Lr4/fv3;->e([Lr4/vv3;)Lr4/o33;

    move-result-object v5

    const/4 v7, 0x2

    new-array v13, v7, [Lr4/hv3;

    const/4 v14, 0x0

    :goto_2c
    if-ge v14, v7, :cond_46

    aget-object v7, v20, v14

    if-eqz v7, :cond_45

    iget-object v9, v7, Lr4/vv3;->b:[I

    array-length v8, v9

    if-nez v8, :cond_43

    goto :goto_2e

    :cond_43
    const/4 v15, 0x1

    if-ne v8, v15, :cond_44

    new-instance v8, Lr4/wv3;

    iget-object v7, v7, Lr4/vv3;->a:Lr4/h24;

    const/16 v16, 0x0

    aget v23, v9, v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    invoke-direct/range {v21 .. v26}, Lr4/wv3;-><init>(Lr4/h24;IIILjava/lang/Object;)V

    goto :goto_2d

    :cond_44
    const/16 v16, 0x0

    iget-object v8, v7, Lr4/vv3;->a:Lr4/h24;

    const/4 v10, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lr4/o33;

    move-object v7, v3

    move-object v11, v4

    invoke-virtual/range {v7 .. v12}, Lr4/ev3;->a(Lr4/h24;[IILr4/kw3;Lr4/o33;)Lr4/fv3;

    move-result-object v8

    :goto_2d
    aput-object v8, v13, v14

    goto :goto_2f

    :cond_45
    :goto_2e
    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_2f
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_2c

    :cond_46
    const/16 v16, 0x0

    new-array v3, v7, [Lr4/i7;

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v7, :cond_4a

    invoke-virtual {v0, v5}, Lr4/xv3;->a(I)I

    move-result v4

    invoke-virtual {v2, v5}, Lr4/ov3;->d(I)Z

    move-result v8

    if-nez v8, :cond_49

    iget-object v8, v2, Lr4/n84;->w:Lr4/y33;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lr4/j33;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_31

    :cond_47
    invoke-virtual {v0, v5}, Lr4/xv3;->a(I)I

    move-result v4

    const/4 v8, -0x2

    if-eq v4, v8, :cond_48

    aget-object v4, v13, v5

    if-eqz v4, :cond_49

    :cond_48
    sget-object v4, Lr4/i7;->a:Lr4/i7;

    goto :goto_32

    :cond_49
    :goto_31
    move-object v4, v6

    :goto_32
    aput-object v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4a
    iget-boolean v0, v2, Lr4/ov3;->J:Z

    invoke-static {v3, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lr4/ov3;
    .locals 1

    iget-object v0, p0, Lr4/uv3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/ov3;

    return-object v0
.end method

.method public final j(Lr4/pv3;)V
    .locals 2

    new-instance v0, Lr4/ov3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lr4/ov3;-><init>(Lr4/pv3;Lr4/lv3;)V

    iget-object p1, p0, Lr4/uv3;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/ov3;

    invoke-virtual {p1, v0}, Lr4/n84;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lr4/aw3;->d()V

    :cond_0
    return-void
.end method
