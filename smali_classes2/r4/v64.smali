.class public final Lr4/v64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final q:Lr4/g04;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/fc;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/xb;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:Lr4/y64;

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/a74;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/util/SparseBooleanArray;

.field public final g:Landroid/util/SparseBooleanArray;

.field public final h:Lr4/r64;

.field public i:Lr4/q64;

.field public j:Lr4/d04;

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/s64;->a:Lr4/g04;

    sput-object v0, Lr4/v64;->q:Lr4/g04;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const v1, 0x1b8a0

    invoke-direct {p0, p1, v0, v1}, Lr4/v64;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    new-instance p1, Lr4/fc;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Lr4/fc;-><init>(J)V

    new-instance p2, Lr4/i54;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lr4/i54;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/v64;->d:Lr4/y64;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/v64;->a:Ljava/util/List;

    new-instance p1, Lr4/xb;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    invoke-direct {p1, p2, p3}, Lr4/xb;-><init>([BI)V

    iput-object p1, p0, Lr4/v64;->b:Lr4/xb;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lr4/v64;->f:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lr4/v64;->g:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lr4/v64;->e:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lr4/v64;->c:Landroid/util/SparseIntArray;

    new-instance v0, Lr4/r64;

    const v1, 0x1b8a0

    invoke-direct {v0, v1}, Lr4/r64;-><init>(I)V

    iput-object v0, p0, Lr4/v64;->h:Lr4/r64;

    sget-object v0, Lr4/d04;->n:Lr4/d04;

    iput-object v0, p0, Lr4/v64;->j:Lr4/d04;

    const/4 v0, -0x1

    iput v0, p0, Lr4/v64;->p:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lr4/v64;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/a74;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/v64;->e:Landroid/util/SparseArray;

    new-instance p2, Lr4/n64;

    new-instance v0, Lr4/t64;

    invoke-direct {v0, p0}, Lr4/t64;-><init>(Lr4/v64;)V

    invoke-direct {p2, v0}, Lr4/n64;-><init>(Lr4/m64;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lr4/v64;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr4/v64;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lr4/v64;)Lr4/y64;
    .locals 0

    iget-object p0, p0, Lr4/v64;->d:Lr4/y64;

    return-object p0
.end method

.method public static synthetic c(Lr4/v64;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lr4/v64;->e:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic d(Lr4/v64;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lr4/v64;->f:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic g(Lr4/v64;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lr4/v64;->g:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic j(Lr4/v64;)Lr4/d04;
    .locals 0

    iget-object p0, p0, Lr4/v64;->j:Lr4/d04;

    return-object p0
.end method

.method public static synthetic k(Lr4/v64;)I
    .locals 0

    iget p0, p0, Lr4/v64;->k:I

    return p0
.end method

.method public static synthetic l(Lr4/v64;I)I
    .locals 0

    iput p1, p0, Lr4/v64;->k:I

    return p1
.end method

.method public static synthetic m(Lr4/v64;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/v64;->l:Z

    return p1
.end method

.method public static synthetic n(Lr4/v64;I)I
    .locals 0

    iput p1, p0, Lr4/v64;->p:I

    return p1
.end method


# virtual methods
.method public final e(Lr4/b04;)Z
    .locals 6

    iget-object v0, p0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    check-cast p1, Lr4/vz3;

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    invoke-virtual {p1, v0, v1, v2, v1}, Lr4/vz3;->i([BIIZ)Z

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, v1}, Lr4/vz3;->n(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v11

    iget-boolean v3, v0, Lr4/v64;->l:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    cmp-long v3, v11, v13

    if-eqz v3, :cond_1

    iget-object v3, v0, Lr4/v64;->h:Lr4/r64;

    invoke-virtual {v3}, Lr4/r64;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lr4/v64;->h:Lr4/r64;

    iget v4, v0, Lr4/v64;->p:I

    invoke-virtual {v3, v1, v2, v4}, Lr4/r64;->b(Lr4/b04;Lr4/w04;I)I

    move-result v1

    return v1

    :cond_1
    :goto_0
    iget-boolean v3, v0, Lr4/v64;->m:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_3

    iput-boolean v15, v0, Lr4/v64;->m:Z

    iget-object v3, v0, Lr4/v64;->h:Lr4/r64;

    invoke-virtual {v3}, Lr4/r64;->c()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v3, v5

    if-eqz v9, :cond_2

    new-instance v9, Lr4/q64;

    iget-object v3, v0, Lr4/v64;->h:Lr4/r64;

    invoke-virtual {v3}, Lr4/r64;->d()Lr4/fc;

    move-result-object v4

    iget-object v3, v0, Lr4/v64;->h:Lr4/r64;

    invoke-virtual {v3}, Lr4/r64;->c()J

    move-result-wide v5

    iget v3, v0, Lr4/v64;->p:I

    const v16, 0x1b8a0

    move/from16 v17, v3

    move-object v3, v9

    move-wide v13, v7

    move-wide v7, v11

    move-object v15, v9

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lr4/q64;-><init>(Lr4/fc;JJII)V

    iput-object v15, v0, Lr4/v64;->i:Lr4/q64;

    iget-object v3, v0, Lr4/v64;->j:Lr4/d04;

    invoke-virtual {v15}, Lr4/rz3;->a()Lr4/z04;

    move-result-object v4

    invoke-interface {v3, v4}, Lr4/d04;->j(Lr4/z04;)V

    goto :goto_1

    :cond_2
    move-wide v13, v7

    iget-object v3, v0, Lr4/v64;->j:Lr4/d04;

    new-instance v4, Lr4/y04;

    iget-object v5, v0, Lr4/v64;->h:Lr4/r64;

    invoke-virtual {v5}, Lr4/r64;->c()J

    move-result-wide v5

    invoke-direct {v4, v5, v6, v13, v14}, Lr4/y04;-><init>(JJ)V

    invoke-interface {v3, v4}, Lr4/d04;->j(Lr4/z04;)V

    goto :goto_1

    :cond_3
    move-wide v13, v7

    :goto_1
    iget-boolean v3, v0, Lr4/v64;->n:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    iput-boolean v3, v0, Lr4/v64;->n:Z

    invoke-virtual {v0, v13, v14, v13, v14}, Lr4/v64;->i(JJ)V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v4

    cmp-long v6, v4, v13

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iput-wide v13, v2, Lr4/w04;->a:J

    const/4 v1, 0x1

    return v1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lr4/v64;->i:Lr4/q64;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lr4/rz3;->c()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lr4/v64;->i:Lr4/q64;

    invoke-virtual {v3, v1, v2}, Lr4/rz3;->d(Lr4/b04;Lr4/w04;)I

    move-result v1

    return v1

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_3
    iget-object v2, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->o()I

    move-result v4

    rsub-int v4, v4, 0x24b8

    const/16 v5, 0xbc

    if-lt v4, v5, :cond_9

    goto :goto_4

    :cond_9
    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->l()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v6, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->o()I

    move-result v6

    invoke-static {v2, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    iget-object v6, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v6, v2, v4}, Lr4/xb;->j([BI)V

    :goto_4
    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->l()I

    move-result v4

    const/4 v6, -0x1

    if-ge v4, v5, :cond_c

    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->m()I

    move-result v4

    rsub-int v7, v4, 0x24b8

    invoke-interface {v1, v2, v4, v7}, Lr4/b04;->b([BII)I

    move-result v7

    if-ne v7, v6, :cond_b

    return v6

    :cond_b
    iget-object v6, v0, Lr4/v64;->b:Lr4/xb;

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Lr4/xb;->n(I)V

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->o()I

    move-result v1

    iget-object v2, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->m()I

    move-result v2

    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    invoke-static {v4, v1, v2}, Lr4/b74;->a([BII)I

    move-result v4

    iget-object v5, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v5, v4}, Lr4/xb;->p(I)V

    add-int/lit16 v5, v4, 0xbc

    if-le v5, v2, :cond_d

    iget v2, v0, Lr4/v64;->o:I

    sub-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, v0, Lr4/v64;->o:I

    goto :goto_5

    :cond_d
    iput v3, v0, Lr4/v64;->o:I

    :goto_5
    iget-object v1, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->m()I

    move-result v1

    if-le v5, v1, :cond_e

    return v3

    :cond_e
    iget-object v2, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->D()I

    move-result v2

    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-eqz v4, :cond_f

    iget-object v1, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v1, v5}, Lr4/xb;->p(I)V

    return v3

    :cond_f
    const/high16 v4, 0x400000

    and-int/2addr v4, v2

    if-eqz v4, :cond_10

    const/4 v10, 0x1

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    :goto_6
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0x1fff

    and-int/lit8 v7, v2, 0x20

    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_11

    iget-object v8, v0, Lr4/v64;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr4/a74;

    goto :goto_7

    :cond_11
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_12

    iget-object v1, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v1, v5}, Lr4/xb;->p(I)V

    return v3

    :cond_12
    and-int/lit8 v2, v2, 0xf

    iget-object v9, v0, Lr4/v64;->c:Landroid/util/SparseIntArray;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v9, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v13, v0, Lr4/v64;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v2, :cond_13

    iget-object v1, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v1, v5}, Lr4/xb;->p(I)V

    return v3

    :cond_13
    const/4 v13, 0x1

    add-int/2addr v9, v13

    and-int/lit8 v9, v9, 0xf

    if-eq v2, v9, :cond_14

    invoke-interface {v8}, Lr4/a74;->a()V

    :cond_14
    if-eqz v7, :cond_16

    iget-object v2, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->v()I

    move-result v2

    iget-object v7, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v7}, Lr4/xb;->v()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_15

    const/4 v7, 0x2

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    :goto_8
    or-int/2addr v10, v7

    iget-object v7, v0, Lr4/v64;->b:Lr4/xb;

    add-int/2addr v2, v6

    invoke-virtual {v7, v2}, Lr4/xb;->s(I)V

    :cond_16
    iget-boolean v2, v0, Lr4/v64;->l:Z

    if-nez v2, :cond_17

    iget-object v6, v0, Lr4/v64;->g:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4, v5}, Lr4/xb;->n(I)V

    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-interface {v8, v4, v10}, Lr4/a74;->c(Lr4/xb;I)V

    iget-object v4, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v4, v1}, Lr4/xb;->n(I)V

    if-nez v2, :cond_19

    :cond_18
    iget-boolean v1, v0, Lr4/v64;->l:Z

    if-eqz v1, :cond_19

    const-wide/16 v1, -0x1

    cmp-long v4, v11, v1

    if-eqz v4, :cond_19

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/v64;->n:Z

    :cond_19
    iget-object v1, v0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {v1, v5}, Lr4/xb;->p(I)V

    return v3
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/v64;->j:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 9

    iget-object p1, p0, Lr4/v64;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-ge v0, p1, :cond_2

    iget-object v3, p0, Lr4/v64;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/fc;

    invoke-virtual {v3}, Lr4/fc;->c()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lr4/fc;->a()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    cmp-long v6, v4, v1

    if-eqz v6, :cond_1

    cmp-long v1, v4, p3

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v3, p3, p4}, Lr4/fc;->d(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/v64;->i:Lr4/q64;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3, p4}, Lr4/rz3;->b(J)V

    :cond_3
    iget-object p1, p0, Lr4/v64;->b:Lr4/xb;

    invoke-virtual {p1, p2}, Lr4/xb;->i(I)V

    iget-object p1, p0, Lr4/v64;->c:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    :goto_1
    iget-object p3, p0, Lr4/v64;->e:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lr4/v64;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/a74;

    invoke-interface {p3}, Lr4/a74;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput p2, p0, Lr4/v64;->o:I

    return-void
.end method
