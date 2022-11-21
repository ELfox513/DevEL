.class public final Lr4/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/pf;
.implements Lr4/wf;


# static fields
.field public static final p:Lr4/rf;

.field public static final q:I


# instance fields
.field public final a:Lr4/dl;

.field public final b:Lr4/dl;

.field public final c:Lr4/dl;

.field public final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lr4/kg;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:J

.field public h:I

.field public i:Lr4/dl;

.field public j:I

.field public k:I

.field public l:Lr4/qf;

.field public m:[Lr4/bh;

.field public n:J

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ah;

    invoke-direct {v0}, Lr4/ah;-><init>()V

    sput-object v0, Lr4/ch;->p:Lr4/rf;

    const-string v0, "qt  "

    invoke-static {v0}, Lr4/ll;->l(Ljava/lang/String;)I

    move-result v0

    sput v0, Lr4/ch;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/dl;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lr4/dl;-><init>(I)V

    iput-object v0, p0, Lr4/ch;->c:Lr4/dl;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lr4/ch;->d:Ljava/util/Stack;

    new-instance v0, Lr4/dl;

    sget-object v1, Lr4/bl;->a:[B

    invoke-direct {v0, v1}, Lr4/dl;-><init>([B)V

    iput-object v0, p0, Lr4/ch;->a:Lr4/dl;

    new-instance v0, Lr4/dl;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lr4/dl;-><init>(I)V

    iput-object v0, p0, Lr4/ch;->b:Lr4/dl;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lr4/ch;->n:J

    return-wide v0
.end method

.method public final b(J)J
    .locals 8

    iget-object v0, p0, Lr4/ch;->m:[Lr4/bh;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-object v5, v5, Lr4/bh;->b:Lr4/hh;

    invoke-virtual {v5, p1, p2}, Lr4/hh;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v5, p1, p2}, Lr4/hh;->b(J)I

    move-result v6

    :cond_0
    iget-object v5, v5, Lr4/hh;->b:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/ch;->e:I

    iput v0, p0, Lr4/ch;->h:I

    return-void
.end method

.method public final d(J)V
    .locals 19

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/kg;

    iget-wide v3, v1, Lr4/kg;->P0:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_b

    iget-object v1, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/kg;

    iget v3, v1, Lr4/mg;->a:I

    sget v4, Lr4/mg;->C:I

    if-ne v3, v4, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lr4/tf;

    invoke-direct {v4}, Lr4/tf;-><init>()V

    sget v5, Lr4/mg;->A0:I

    invoke-virtual {v1, v5}, Lr4/kg;->f(I)Lr4/lg;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v6, v0, Lr4/ch;->o:Z

    invoke-static {v5, v6}, Lr4/tg;->c(Lr4/lg;Z)Lr4/yh;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lr4/tf;->a(Lr4/yh;)Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x7fffffffffffffffL

    const/4 v11, 0x0

    :goto_2
    iget-object v12, v1, Lr4/kg;->R0:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    iget-object v12, v1, Lr4/kg;->R0:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr4/kg;

    iget v13, v12, Lr4/mg;->a:I

    sget v14, Lr4/mg;->E:I

    if-eq v13, v14, :cond_3

    goto :goto_3

    :cond_3
    sget v13, Lr4/mg;->D:I

    invoke-virtual {v1, v13}, Lr4/kg;->f(I)Lr4/lg;

    move-result-object v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    iget-boolean v13, v0, Lr4/ch;->o:Z

    move/from16 v18, v13

    move-object v13, v12

    invoke-static/range {v13 .. v18}, Lr4/tg;->a(Lr4/kg;Lr4/lg;JLr4/lf;Z)Lr4/eh;

    move-result-object v13

    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    sget v14, Lr4/mg;->F:I

    invoke-virtual {v12, v14}, Lr4/kg;->g(I)Lr4/kg;

    move-result-object v12

    sget v14, Lr4/mg;->G:I

    invoke-virtual {v12, v14}, Lr4/kg;->g(I)Lr4/kg;

    move-result-object v12

    sget v14, Lr4/mg;->H:I

    invoke-virtual {v12, v14}, Lr4/kg;->g(I)Lr4/kg;

    move-result-object v12

    invoke-static {v13, v12, v4}, Lr4/tg;->b(Lr4/eh;Lr4/kg;Lr4/tf;)Lr4/hh;

    move-result-object v12

    iget v14, v12, Lr4/hh;->a:I

    if-nez v14, :cond_5

    :goto_3
    move-object v2, v4

    move-object v10, v5

    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    new-instance v14, Lr4/bh;

    iget-object v15, v0, Lr4/ch;->l:Lr4/qf;

    iget v2, v13, Lr4/eh;->b:I

    invoke-interface {v15, v11, v2}, Lr4/qf;->n(II)Lr4/yf;

    move-result-object v2

    invoke-direct {v14, v13, v12, v2}, Lr4/bh;-><init>(Lr4/eh;Lr4/hh;Lr4/yf;)V

    iget v2, v12, Lr4/hh;->d:I

    iget-object v15, v13, Lr4/eh;->f:Lr4/id;

    add-int/lit8 v2, v2, 0x1e

    invoke-virtual {v15, v2}, Lr4/id;->u(I)Lr4/id;

    move-result-object v2

    iget v15, v13, Lr4/eh;->b:I

    const/4 v10, 0x1

    if-ne v15, v10, :cond_7

    invoke-virtual {v4}, Lr4/tf;->b()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v10, v4, Lr4/tf;->a:I

    iget v15, v4, Lr4/tf;->b:I

    invoke-virtual {v2, v10, v15}, Lr4/id;->v(II)Lr4/id;

    move-result-object v2

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v2, v5}, Lr4/id;->z(Lr4/yh;)Lr4/id;

    move-result-object v2

    :cond_7
    iget-object v10, v14, Lr4/bh;->c:Lr4/yf;

    invoke-interface {v10, v2}, Lr4/yf;->d(Lr4/id;)V

    move-object v2, v4

    move-object v10, v5

    iget-wide v4, v13, Lr4/eh;->e:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v12, Lr4/hh;->b:[J

    const/4 v12, 0x0

    aget-wide v13, v6, v12

    cmp-long v6, v13, v8

    if-gez v6, :cond_8

    move-wide v6, v4

    move-wide v8, v13

    goto :goto_4

    :cond_8
    move-wide v6, v4

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object v4, v2

    move-object v5, v10

    goto/16 :goto_2

    :cond_9
    iput-wide v6, v0, Lr4/ch;->n:J

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lr4/bh;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lr4/bh;

    iput-object v1, v0, Lr4/ch;->m:[Lr4/bh;

    iget-object v1, v0, Lr4/ch;->l:Lr4/qf;

    invoke-interface {v1}, Lr4/qf;->j()V

    iget-object v1, v0, Lr4/ch;->l:Lr4/qf;

    invoke-interface {v1, v0}, Lr4/qf;->b(Lr4/wf;)V

    iget-object v1, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lr4/ch;->e:I

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/kg;

    invoke-virtual {v2, v1}, Lr4/kg;->e(Lr4/kg;)V

    goto/16 :goto_0

    :cond_b
    iget v1, v0, Lr4/ch;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lr4/ch;->c()V

    :cond_c
    return-void
.end method

.method public final l(JJ)V
    .locals 5

    iget-object v0, p0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/ch;->h:I

    iput v0, p0, Lr4/ch;->j:I

    iput v0, p0, Lr4/ch;->k:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lr4/ch;->c()V

    return-void

    :cond_0
    iget-object p1, p0, Lr4/ch;->m:[Lr4/bh;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    iget-object v2, v1, Lr4/bh;->b:Lr4/hh;

    invoke-virtual {v2, p3, p4}, Lr4/hh;->a(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, p3, p4}, Lr4/hh;->b(J)I

    move-result v3

    :cond_1
    iput v3, v1, Lr4/bh;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final m(Lr4/of;Lr4/uf;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    :goto_0
    iget v3, v0, Lr4/ch;->e:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_13

    const/4 v8, 0x2

    const-wide/32 v9, 0x40000

    if-eq v3, v6, :cond_b

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1
    iget-object v14, v0, Lr4/ch;->m:[Lr4/bh;

    array-length v15, v14

    if-ge v3, v15, :cond_3

    aget-object v14, v14, v3

    iget v15, v14, Lr4/bh;->d:I

    iget-object v14, v14, Lr4/bh;->b:Lr4/hh;

    iget v11, v14, Lr4/hh;->a:I

    if-ne v15, v11, :cond_1

    goto :goto_2

    :cond_1
    iget-object v11, v14, Lr4/hh;->b:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_2

    move v5, v3

    move-wide v12, v14

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    goto/16 :goto_7

    :cond_4
    aget-object v3, v14, v5

    iget-object v4, v3, Lr4/bh;->c:Lr4/yf;

    iget v5, v3, Lr4/bh;->d:I

    iget-object v11, v3, Lr4/bh;->b:Lr4/hh;

    iget-object v12, v11, Lr4/hh;->b:[J

    aget-wide v13, v12, v5

    iget-object v11, v11, Lr4/hh;->c:[I

    aget v11, v11, v5

    iget-object v12, v3, Lr4/bh;->a:Lr4/eh;

    iget v12, v12, Lr4/eh;->g:I

    if-ne v12, v6, :cond_5

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v11, v11, -0x8

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lr4/of;->h()J

    move-result-wide v16

    sub-long v16, v13, v16

    iget v12, v0, Lr4/ch;->j:I

    int-to-long v6, v12

    add-long v6, v16, v6

    const-wide/16 v16, 0x0

    cmp-long v12, v6, v16

    if-ltz v12, :cond_a

    cmp-long v12, v6, v9

    if-ltz v12, :cond_6

    goto/16 :goto_6

    :cond_6
    long-to-int v2, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lr4/of;->d(IZ)Z

    iget-object v2, v3, Lr4/bh;->a:Lr4/eh;

    iget v2, v2, Lr4/eh;->k:I

    if-nez v2, :cond_8

    :goto_3
    iget v2, v0, Lr4/ch;->j:I

    if-ge v2, v11, :cond_7

    sub-int v2, v11, v2

    invoke-interface {v4, v1, v2, v6}, Lr4/yf;->b(Lr4/of;IZ)I

    move-result v2

    iget v7, v0, Lr4/ch;->j:I

    add-int/2addr v7, v2

    iput v7, v0, Lr4/ch;->j:I

    iget v7, v0, Lr4/ch;->k:I

    sub-int/2addr v7, v2

    iput v7, v0, Lr4/ch;->k:I

    goto :goto_3

    :cond_7
    move/from16 v20, v11

    goto :goto_5

    :cond_8
    iget-object v7, v0, Lr4/ch;->b:Lr4/dl;

    iget-object v7, v7, Lr4/dl;->a:[B

    aput-byte v6, v7, v6

    const/4 v9, 0x1

    aput-byte v6, v7, v9

    aput-byte v6, v7, v8

    rsub-int/lit8 v7, v2, 0x4

    :goto_4
    iget v8, v0, Lr4/ch;->j:I

    if-ge v8, v11, :cond_7

    iget v8, v0, Lr4/ch;->k:I

    if-nez v8, :cond_9

    iget-object v8, v0, Lr4/ch;->b:Lr4/dl;

    iget-object v8, v8, Lr4/dl;->a:[B

    invoke-virtual {v1, v8, v7, v2, v6}, Lr4/of;->b([BIIZ)Z

    iget-object v8, v0, Lr4/ch;->b:Lr4/dl;

    invoke-virtual {v8, v6}, Lr4/dl;->i(I)V

    iget-object v8, v0, Lr4/ch;->b:Lr4/dl;

    invoke-virtual {v8}, Lr4/dl;->u()I

    move-result v8

    iput v8, v0, Lr4/ch;->k:I

    iget-object v8, v0, Lr4/ch;->a:Lr4/dl;

    invoke-virtual {v8, v6}, Lr4/dl;->i(I)V

    iget-object v8, v0, Lr4/ch;->a:Lr4/dl;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9}, Lr4/yf;->c(Lr4/dl;I)V

    iget v8, v0, Lr4/ch;->j:I

    add-int/2addr v8, v9

    iput v8, v0, Lr4/ch;->j:I

    add-int/2addr v11, v7

    goto :goto_4

    :cond_9
    invoke-interface {v4, v1, v8, v6}, Lr4/yf;->b(Lr4/of;IZ)I

    move-result v8

    iget v6, v0, Lr4/ch;->j:I

    add-int/2addr v6, v8

    iput v6, v0, Lr4/ch;->j:I

    iget v6, v0, Lr4/ch;->k:I

    sub-int/2addr v6, v8

    iput v6, v0, Lr4/ch;->k:I

    const/4 v6, 0x0

    goto :goto_4

    :goto_5
    iget-object v1, v3, Lr4/bh;->b:Lr4/hh;

    iget-object v2, v1, Lr4/hh;->e:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lr4/hh;->f:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lr4/yf;->a(JIIILr4/xf;)V

    iget v1, v3, Lr4/bh;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lr4/bh;->d:I

    const/4 v1, 0x0

    iput v1, v0, Lr4/ch;->j:I

    iput v1, v0, Lr4/ch;->k:I

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    iput-wide v13, v2, Lr4/uf;->a:J

    const/4 v4, 0x1

    :goto_7
    return v4

    :cond_b
    iget-wide v3, v0, Lr4/ch;->g:J

    iget v6, v0, Lr4/ch;->h:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    invoke-virtual/range {p1 .. p1}, Lr4/of;->h()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v11, v0, Lr4/ch;->i:Lr4/dl;

    if-eqz v11, :cond_10

    iget-object v9, v11, Lr4/dl;->a:[B

    iget v10, v0, Lr4/ch;->h:I

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v10, v4, v3}, Lr4/of;->b([BIIZ)Z

    iget v3, v0, Lr4/ch;->f:I

    sget v4, Lr4/mg;->b:I

    if-ne v3, v4, :cond_f

    iget-object v3, v0, Lr4/ch;->i:Lr4/dl;

    invoke-virtual {v3, v5}, Lr4/dl;->i(I)V

    invoke-virtual {v3}, Lr4/dl;->r()I

    move-result v4

    sget v5, Lr4/ch;->q:I

    if-ne v4, v5, :cond_c

    :goto_8
    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lr4/dl;->j(I)V

    :cond_d
    invoke-virtual {v3}, Lr4/dl;->d()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual {v3}, Lr4/dl;->r()I

    move-result v4

    sget v5, Lr4/ch;->q:I

    if-ne v4, v5, :cond_d

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_9
    iput-boolean v3, v0, Lr4/ch;->o:Z

    goto :goto_a

    :cond_f
    iget-object v3, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v0, Lr4/ch;->d:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/kg;

    new-instance v4, Lr4/lg;

    iget v5, v0, Lr4/ch;->f:I

    iget-object v9, v0, Lr4/ch;->i:Lr4/dl;

    invoke-direct {v4, v5, v9}, Lr4/lg;-><init>(ILr4/dl;)V

    invoke-virtual {v3, v4}, Lr4/kg;->d(Lr4/lg;)V

    goto :goto_a

    :cond_10
    cmp-long v5, v3, v9

    if-gez v5, :cond_12

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Lr4/of;->d(IZ)Z

    :cond_11
    :goto_a
    const/16 v23, 0x0

    goto :goto_b

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lr4/of;->h()J

    move-result-wide v9

    add-long/2addr v9, v3

    iput-wide v9, v2, Lr4/uf;->a:J

    const/16 v23, 0x1

    :goto_b
    invoke-virtual {v0, v6, v7}, Lr4/ch;->d(J)V

    if-eqz v23, :cond_0

    iget v3, v0, Lr4/ch;->e:I

    if-eq v3, v8, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_13
    const/4 v3, 0x1

    iget v6, v0, Lr4/ch;->h:I

    if-nez v6, :cond_15

    iget-object v6, v0, Lr4/ch;->c:Lr4/dl;

    iget-object v6, v6, Lr4/dl;->a:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5, v3}, Lr4/of;->b([BIIZ)Z

    move-result v6

    if-nez v6, :cond_14

    return v4

    :cond_14
    iput v5, v0, Lr4/ch;->h:I

    iget-object v3, v0, Lr4/ch;->c:Lr4/dl;

    invoke-virtual {v3, v7}, Lr4/dl;->i(I)V

    iget-object v3, v0, Lr4/ch;->c:Lr4/dl;

    invoke-virtual {v3}, Lr4/dl;->p()J

    move-result-wide v3

    iput-wide v3, v0, Lr4/ch;->g:J

    iget-object v3, v0, Lr4/ch;->c:Lr4/dl;

    invoke-virtual {v3}, Lr4/dl;->r()I

    move-result v3

    iput v3, v0, Lr4/ch;->f:I

    :cond_15
    iget-wide v3, v0, Lr4/ch;->g:J

    const-wide/16 v6, 0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_16

    iget-object v3, v0, Lr4/ch;->c:Lr4/dl;

    iget-object v3, v3, Lr4/dl;->a:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v5, v5, v4}, Lr4/of;->b([BIIZ)Z

    iget v3, v0, Lr4/ch;->h:I

    add-int/2addr v3, v5

    iput v3, v0, Lr4/ch;->h:I

    iget-object v3, v0, Lr4/ch;->c:Lr4/dl;

    invoke-virtual {v3}, Lr4/dl;->v()J

    move-result-wide v3

    iput-wide v3, v0, Lr4/ch;->g:J

    :cond_16
    iget v3, v0, Lr4/ch;->f:I

    sget v4, Lr4/mg;->C:I

    if-eq v3, v4, :cond_1c

    sget v4, Lr4/mg;->E:I

    if-eq v3, v4, :cond_1c

    sget v4, Lr4/mg;->F:I

    if-eq v3, v4, :cond_1c

    sget v4, Lr4/mg;->G:I

    if-eq v3, v4, :cond_1c

    sget v4, Lr4/mg;->H:I

    if-eq v3, v4, :cond_1c

    sget v4, Lr4/mg;->Q:I

    if-ne v3, v4, :cond_17

    goto/16 :goto_10

    :cond_17
    sget v4, Lr4/mg;->S:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->D:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->T:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->U:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->m0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->n0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->o0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->R:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->p0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->q0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->r0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->s0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->t0:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->P:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->b:I

    if-eq v3, v4, :cond_19

    sget v4, Lr4/mg;->A0:I

    if-ne v3, v4, :cond_18

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    iput-object v3, v0, Lr4/ch;->i:Lr4/dl;

    goto :goto_f

    :cond_19
    :goto_c
    iget v3, v0, Lr4/ch;->h:I

    if-ne v3, v5, :cond_1a

    const/4 v6, 0x1

    goto :goto_d

    :cond_1a
    const/4 v6, 0x0

    :goto_d
    invoke-static {v6}, Lr4/vk;->d(Z)V

    iget-wide v3, v0, Lr4/ch;->g:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v3, v6

    if-gtz v8, :cond_1b

    const/4 v6, 0x1

    goto :goto_e

    :cond_1b
    const/4 v6, 0x0

    :goto_e
    invoke-static {v6}, Lr4/vk;->d(Z)V

    new-instance v3, Lr4/dl;

    iget-wide v6, v0, Lr4/ch;->g:J

    long-to-int v4, v6

    invoke-direct {v3, v4}, Lr4/dl;-><init>(I)V

    iput-object v3, v0, Lr4/ch;->i:Lr4/dl;

    iget-object v4, v0, Lr4/ch;->c:Lr4/dl;

    iget-object v4, v4, Lr4/dl;->a:[B

    iget-object v3, v3, Lr4/dl;->a:[B

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    const/4 v3, 0x1

    iput v3, v0, Lr4/ch;->e:I

    goto/16 :goto_0

    :cond_1c
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lr4/of;->h()J

    move-result-wide v3

    iget-wide v5, v0, Lr4/ch;->g:J

    add-long/2addr v3, v5

    iget v5, v0, Lr4/ch;->h:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iget-object v5, v0, Lr4/ch;->d:Ljava/util/Stack;

    new-instance v6, Lr4/kg;

    iget v7, v0, Lr4/ch;->f:I

    invoke-direct {v6, v7, v3, v4}, Lr4/kg;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-wide v5, v0, Lr4/ch;->g:J

    iget v7, v0, Lr4/ch;->h:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1d

    invoke-virtual {v0, v3, v4}, Lr4/ch;->d(J)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lr4/ch;->c()V

    goto/16 :goto_0
.end method

.method public final n(Lr4/of;)Z
    .locals 0

    invoke-static {p1}, Lr4/dh;->b(Lr4/of;)Z

    move-result p1

    return p1
.end method

.method public final o(Lr4/qf;)V
    .locals 0

    iput-object p1, p0, Lr4/ch;->l:Lr4/qf;

    return-void
.end method

.method public final zza()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
