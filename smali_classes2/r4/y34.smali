.class public final Lr4/y34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;
.implements Lr4/z04;


# static fields
.field public static final x:Lr4/g04;


# instance fields
.field public final a:Lr4/xb;

.field public final b:Lr4/xb;

.field public final c:Lr4/xb;

.field public final d:Lr4/xb;

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/d34;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/b44;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/i8;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:Lr4/xb;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Lr4/d04;

.field public r:[Lr4/x34;

.field public s:[[J

.field public t:I

.field public u:J

.field public v:I

.field public w:Lr4/da;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/w34;->a:Lr4/g04;

    sput-object v0, Lr4/y34;->x:Lr4/g04;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lr4/y34;->h:I

    new-instance p1, Lr4/b44;

    invoke-direct {p1}, Lr4/b44;-><init>()V

    iput-object p1, p0, Lr4/y34;->f:Lr4/b44;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/y34;->g:Ljava/util/List;

    new-instance p1, Lr4/xb;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/y34;->d:Lr4/xb;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    new-instance p1, Lr4/xb;

    sget-object v0, Lr4/nb;->a:[B

    invoke-direct {p1, v0}, Lr4/xb;-><init>([B)V

    iput-object p1, p0, Lr4/y34;->a:Lr4/xb;

    new-instance p1, Lr4/xb;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/y34;->b:Lr4/xb;

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/y34;->c:Lr4/xb;

    const/4 p1, -0x1

    iput p1, p0, Lr4/y34;->m:I

    return-void
.end method

.method public static l(Lr4/g44;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lr4/y34;->m(Lr4/g44;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lr4/g44;->c:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static m(Lr4/g44;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lr4/g44;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lr4/g44;->b(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static n(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 12

    iget-object v0, p0, Lr4/y34;->r:[Lr4/x34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance p1, Lr4/x04;

    sget-object p2, Lr4/a14;->c:Lr4/a14;

    invoke-direct {p1, p2, p2}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1

    :cond_0
    iget v1, p0, Lr4/y34;->t:I

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_3

    aget-object v0, v0, v1

    iget-object v0, v0, Lr4/x34;->b:Lr4/g44;

    invoke-static {v0, p1, p2}, Lr4/y34;->m(Lr4/g44;J)I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance p1, Lr4/x04;

    sget-object p2, Lr4/a14;->c:Lr4/a14;

    invoke-direct {p1, p2, p2}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1

    :cond_1
    iget-object v7, v0, Lr4/g44;->f:[J

    aget-wide v8, v7, v1

    iget-object v7, v0, Lr4/g44;->c:[J

    aget-wide v10, v7, v1

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    iget v7, v0, Lr4/g44;->b:I

    add-int/2addr v7, v2

    if-ge v1, v7, :cond_2

    invoke-virtual {v0, p1, p2}, Lr4/g44;->b(J)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    iget-object p2, v0, Lr4/g44;->f:[J

    aget-wide v1, p2, p1

    iget-object p2, v0, Lr4/g44;->c:[J

    aget-wide p1, p2, p1

    move-wide v3, p1

    goto :goto_0

    :cond_2
    move-wide v1, v5

    :goto_0
    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lr4/y34;->r:[Lr4/x34;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    iget v8, p0, Lr4/y34;->t:I

    if-eq v0, v8, :cond_5

    aget-object v7, v7, v0

    iget-object v7, v7, Lr4/x34;->b:Lr4/g44;

    invoke-static {v7, p1, p2, v10, v11}, Lr4/y34;->l(Lr4/g44;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    invoke-static {v7, v1, v2, v3, v4}, Lr4/y34;->l(Lr4/g44;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lr4/a14;

    invoke-direct {v0, p1, p2, v10, v11}, Lr4/a14;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    new-instance p1, Lr4/x04;

    invoke-direct {p1, v0, v0}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1

    :cond_7
    new-instance p1, Lr4/a14;

    invoke-direct {p1, v1, v2, v3, v4}, Lr4/a14;-><init>(JJ)V

    new-instance p2, Lr4/x04;

    invoke-direct {p2, v0, p1}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p2
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lr4/b04;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lr4/c44;->b(Lr4/b04;Z)Z

    move-result p1

    return p1
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    :goto_0
    iget v3, v0, Lr4/y34;->h:I

    const v5, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_1d

    const-wide/32 v13, 0x40000

    if-eq v3, v10, :cond_15

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v16

    iget v3, v0, Lr4/y34;->m:I

    if-ne v3, v8, :cond_b

    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v25, v22

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/16 v24, 0x1

    const/16 v27, -0x1

    :goto_1
    iget-object v4, v0, Lr4/y34;->r:[Lr4/x34;

    invoke-static {v4}, Lr4/lc;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lr4/x34;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    iget-object v4, v0, Lr4/y34;->r:[Lr4/x34;

    aget-object v4, v4, v3

    iget v15, v4, Lr4/x34;->d:I

    iget-object v4, v4, Lr4/x34;->b:Lr4/g44;

    iget v12, v4, Lr4/g44;->b:I

    if-ne v15, v12, :cond_1

    goto :goto_6

    :cond_1
    iget-object v4, v4, Lr4/g44;->c:[J

    aget-wide v28, v4, v15

    iget-object v4, v0, Lr4/y34;->s:[[J

    invoke-static {v4}, Lr4/lc;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    aget-object v4, v4, v3

    aget-wide v30, v4, v15

    sub-long v28, v28, v16

    cmp-long v4, v28, v6

    if-ltz v4, :cond_3

    cmp-long v4, v28, v13

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_4

    if-nez v24, :cond_5

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    move/from16 v12, v24

    :goto_4
    if-ne v4, v12, :cond_6

    cmp-long v15, v28, v22

    if-gez v15, :cond_6

    :cond_5
    move v5, v3

    move/from16 v24, v4

    move-wide/from16 v22, v28

    move-wide/from16 v25, v30

    goto :goto_5

    :cond_6
    move/from16 v24, v12

    :goto_5
    cmp-long v12, v30, v20

    if-gez v12, :cond_7

    move/from16 v27, v3

    move v9, v4

    move-wide/from16 v20, v30

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    cmp-long v3, v20, v18

    if-eqz v3, :cond_a

    if-eqz v9, :cond_a

    const-wide/32 v3, 0xa00000

    add-long v20, v20, v3

    cmp-long v3, v25, v20

    if-gez v3, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v5, v27

    :cond_a
    :goto_7
    iput v5, v0, Lr4/y34;->m:I

    if-ne v5, v8, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-object v3, v0, Lr4/y34;->r:[Lr4/x34;

    invoke-static {v3}, Lr4/lc;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lr4/x34;

    iget v4, v0, Lr4/y34;->m:I

    aget-object v3, v3, v4

    iget-object v4, v3, Lr4/x34;->c:Lr4/d14;

    iget v5, v3, Lr4/x34;->d:I

    iget-object v9, v3, Lr4/x34;->b:Lr4/g44;

    iget-object v12, v9, Lr4/g44;->c:[J

    aget-wide v11, v12, v5

    iget-object v9, v9, Lr4/g44;->d:[I

    aget v9, v9, v5

    sub-long v16, v11, v16

    iget v15, v0, Lr4/y34;->n:I

    move/from16 v19, v9

    int-to-long v8, v15

    add-long v16, v16, v8

    cmp-long v8, v16, v6

    if-ltz v8, :cond_14

    cmp-long v6, v16, v13

    if-ltz v6, :cond_c

    goto/16 :goto_b

    :cond_c
    iget-object v2, v3, Lr4/x34;->a:Lr4/d44;

    iget v2, v2, Lr4/d44;->g:I

    if-ne v2, v10, :cond_d

    const-wide/16 v6, 0x8

    add-long v16, v16, v6

    add-int/lit8 v9, v19, -0x8

    move-wide/from16 v6, v16

    goto :goto_8

    :cond_d
    move-wide/from16 v6, v16

    move/from16 v9, v19

    :goto_8
    long-to-int v2, v6

    invoke-interface {v1, v2}, Lr4/b04;->S(I)V

    iget-object v2, v3, Lr4/x34;->a:Lr4/d44;

    iget v6, v2, Lr4/d44;->j:I

    if-eqz v6, :cond_10

    iget-object v2, v0, Lr4/y34;->b:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    const/4 v6, 0x0

    aput-byte v6, v2, v6

    aput-byte v6, v2, v10

    const/4 v7, 0x2

    aput-byte v6, v2, v7

    iget-object v6, v3, Lr4/x34;->a:Lr4/d44;

    iget v6, v6, Lr4/d44;->j:I

    rsub-int/lit8 v7, v6, 0x4

    :goto_9
    iget v8, v0, Lr4/y34;->o:I

    if-ge v8, v9, :cond_13

    iget v8, v0, Lr4/y34;->p:I

    if-nez v8, :cond_f

    invoke-interface {v1, v2, v7, v6}, Lr4/b04;->a([BII)V

    iget v8, v0, Lr4/y34;->n:I

    add-int/2addr v8, v6

    iput v8, v0, Lr4/y34;->n:I

    iget-object v8, v0, Lr4/y34;->b:Lr4/xb;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lr4/xb;->p(I)V

    iget-object v8, v0, Lr4/y34;->b:Lr4/xb;

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v8

    if-ltz v8, :cond_e

    iput v8, v0, Lr4/y34;->p:I

    iget-object v8, v0, Lr4/y34;->a:Lr4/xb;

    invoke-virtual {v8, v11}, Lr4/xb;->p(I)V

    iget-object v8, v0, Lr4/y34;->a:Lr4/xb;

    const/4 v12, 0x4

    invoke-static {v4, v8, v12}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v8, v0, Lr4/y34;->o:I

    add-int/2addr v8, v12

    iput v8, v0, Lr4/y34;->o:I

    add-int/2addr v9, v7

    goto :goto_9

    :cond_e
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v11, 0x0

    invoke-static {v4, v1, v8, v11}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result v8

    iget v11, v0, Lr4/y34;->n:I

    add-int/2addr v11, v8

    iput v11, v0, Lr4/y34;->n:I

    iget v11, v0, Lr4/y34;->o:I

    add-int/2addr v11, v8

    iput v11, v0, Lr4/y34;->o:I

    iget v11, v0, Lr4/y34;->p:I

    sub-int/2addr v11, v8

    iput v11, v0, Lr4/y34;->p:I

    goto :goto_9

    :cond_10
    iget-object v2, v2, Lr4/d44;->f:Lr4/e5;

    iget-object v2, v2, Lr4/e5;->l:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lr4/y34;->o:I

    if-nez v2, :cond_11

    iget-object v2, v0, Lr4/y34;->c:Lr4/xb;

    invoke-static {v9, v2}, Lr4/jz3;->b(ILr4/xb;)V

    iget-object v2, v0, Lr4/y34;->c:Lr4/xb;

    const/4 v6, 0x7

    invoke-static {v4, v2, v6}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v2, v0, Lr4/y34;->o:I

    add-int/2addr v2, v6

    iput v2, v0, Lr4/y34;->o:I

    :cond_11
    add-int/lit8 v9, v9, 0x7

    :cond_12
    :goto_a
    iget v2, v0, Lr4/y34;->o:I

    if-ge v2, v9, :cond_13

    sub-int v2, v9, v2

    const/4 v6, 0x0

    invoke-static {v4, v1, v2, v6}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result v2

    iget v6, v0, Lr4/y34;->n:I

    add-int/2addr v6, v2

    iput v6, v0, Lr4/y34;->n:I

    iget v6, v0, Lr4/y34;->o:I

    add-int/2addr v6, v2

    iput v6, v0, Lr4/y34;->o:I

    iget v6, v0, Lr4/y34;->p:I

    sub-int/2addr v6, v2

    iput v6, v0, Lr4/y34;->p:I

    goto :goto_a

    :cond_13
    move/from16 v22, v9

    iget-object v1, v3, Lr4/x34;->b:Lr4/g44;

    iget-object v2, v1, Lr4/g44;->f:[J

    aget-wide v19, v2, v5

    iget-object v1, v1, Lr4/g44;->g:[I

    aget v21, v1, v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v24}, Lr4/d14;->e(JIIILr4/c14;)V

    iget v1, v3, Lr4/x34;->d:I

    add-int/2addr v1, v10

    iput v1, v3, Lr4/x34;->d:I

    const/4 v1, -0x1

    iput v1, v0, Lr4/y34;->m:I

    const/4 v1, 0x0

    iput v1, v0, Lr4/y34;->n:I

    iput v1, v0, Lr4/y34;->o:I

    iput v1, v0, Lr4/y34;->p:I

    const/4 v8, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    iput-wide v11, v2, Lr4/w04;->a:J

    const/4 v8, 0x1

    :goto_c
    return v8

    :cond_15
    iget-wide v3, v0, Lr4/y34;->j:J

    iget v6, v0, Lr4/y34;->k:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v6

    add-long/2addr v6, v3

    iget-object v8, v0, Lr4/y34;->l:Lr4/xb;

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Lr4/xb;->q()[B

    move-result-object v11

    iget v12, v0, Lr4/y34;->k:I

    long-to-int v4, v3

    invoke-interface {v1, v11, v12, v4}, Lr4/b04;->a([BII)V

    iget v3, v0, Lr4/y34;->i:I

    if-ne v3, v5, :cond_19

    invoke-virtual {v8, v9}, Lr4/xb;->p(I)V

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v3

    invoke-static {v3}, Lr4/y34;->n(I)I

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_d

    :cond_16
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Lr4/xb;->s(I)V

    :cond_17
    invoke-virtual {v8}, Lr4/xb;->l()I

    move-result v3

    if-lez v3, :cond_18

    invoke-virtual {v8}, Lr4/xb;->D()I

    move-result v3

    invoke-static {v3}, Lr4/y34;->n(I)I

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    :goto_d
    iput v3, v0, Lr4/y34;->v:I

    goto :goto_e

    :cond_19
    iget-object v3, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr4/d34;

    new-instance v4, Lr4/e34;

    iget v5, v0, Lr4/y34;->i:I

    invoke-direct {v4, v5, v8}, Lr4/e34;-><init>(ILr4/xb;)V

    invoke-virtual {v3, v4}, Lr4/d34;->c(Lr4/e34;)V

    goto :goto_e

    :cond_1a
    cmp-long v5, v3, v13

    if-gez v5, :cond_1c

    long-to-int v4, v3

    invoke-interface {v1, v4}, Lr4/b04;->S(I)V

    :cond_1b
    :goto_e
    const/4 v11, 0x0

    goto :goto_f

    :cond_1c
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lr4/w04;->a:J

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {v0, v6, v7}, Lr4/y34;->k(J)V

    if-eqz v11, :cond_0

    iget v3, v0, Lr4/y34;->h:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    return v10

    :cond_1d
    iget v3, v0, Lr4/y34;->k:I

    if-nez v3, :cond_1f

    iget-object v3, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v9, v10}, Lr4/b04;->f([BIIZ)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, -0x1

    return v3

    :cond_1e
    iput v9, v0, Lr4/y34;->k:I

    iget-object v3, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v3, v4}, Lr4/xb;->p(I)V

    iget-object v3, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->B()J

    move-result-wide v3

    iput-wide v3, v0, Lr4/y34;->j:J

    iget-object v3, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->D()I

    move-result v3

    iput v3, v0, Lr4/y34;->i:I

    :cond_1f
    iget-wide v3, v0, Lr4/y34;->j:J

    const-wide/16 v11, 0x1

    cmp-long v8, v3, v11

    if-nez v8, :cond_20

    iget-object v3, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    invoke-interface {v1, v3, v9, v9}, Lr4/b04;->a([BII)V

    iget v3, v0, Lr4/y34;->k:I

    add-int/2addr v3, v9

    iput v3, v0, Lr4/y34;->k:I

    iget-object v3, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->d()J

    move-result-wide v3

    iput-wide v3, v0, Lr4/y34;->j:J

    goto :goto_10

    :cond_20
    cmp-long v8, v3, v6

    if-nez v8, :cond_22

    invoke-interface/range {p1 .. p1}, Lr4/b04;->q()J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_21

    iget-object v8, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr4/d34;

    if-eqz v8, :cond_21

    iget-wide v3, v8, Lr4/d34;->b:J

    :cond_21
    cmp-long v8, v3, v6

    if-eqz v8, :cond_22

    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v6

    sub-long/2addr v3, v6

    iget v6, v0, Lr4/y34;->k:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lr4/y34;->j:J

    :cond_22
    :goto_10
    iget-wide v3, v0, Lr4/y34;->j:J

    iget v6, v0, Lr4/y34;->k:I

    int-to-long v7, v6

    cmp-long v11, v3, v7

    if-ltz v11, :cond_2c

    iget v3, v0, Lr4/y34;->i:I

    const v4, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v3, v4, :cond_29

    const v4, 0x7472616b

    if-eq v3, v4, :cond_29

    const v4, 0x6d646961

    if-eq v3, v4, :cond_29

    const v4, 0x6d696e66

    if-eq v3, v4, :cond_29

    const v4, 0x7374626c

    if-eq v3, v4, :cond_29

    const v4, 0x65647473

    if-eq v3, v4, :cond_29

    if-ne v3, v7, :cond_23

    goto/16 :goto_14

    :cond_23
    const v4, 0x6d646864

    if-eq v3, v4, :cond_26

    const v4, 0x6d766864

    if-eq v3, v4, :cond_26

    const v4, 0x68646c72    # 4.3148E24f

    if-eq v3, v4, :cond_26

    const v4, 0x73747364

    if-eq v3, v4, :cond_26

    const v4, 0x73747473

    if-eq v3, v4, :cond_26

    const v4, 0x73747373

    if-eq v3, v4, :cond_26

    const v4, 0x63747473

    if-eq v3, v4, :cond_26

    const v4, 0x656c7374

    if-eq v3, v4, :cond_26

    const v4, 0x73747363

    if-eq v3, v4, :cond_26

    const v4, 0x7374737a

    if-eq v3, v4, :cond_26

    const v4, 0x73747a32

    if-eq v3, v4, :cond_26

    const v4, 0x7374636f

    if-eq v3, v4, :cond_26

    const v4, 0x636f3634

    if-eq v3, v4, :cond_26

    const v4, 0x746b6864

    if-eq v3, v4, :cond_26

    if-eq v3, v5, :cond_26

    const v4, 0x75647461

    if-eq v3, v4, :cond_26

    const v4, 0x6b657973

    if-eq v3, v4, :cond_26

    const v4, 0x696c7374

    if-ne v3, v4, :cond_24

    goto :goto_11

    :cond_24
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v3

    iget v5, v0, Lr4/y34;->k:I

    int-to-long v5, v5

    sub-long v14, v3, v5

    iget v3, v0, Lr4/y34;->i:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_25

    new-instance v3, Lr4/da;

    const-wide/16 v12, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    add-long v18, v14, v5

    iget-wide v7, v0, Lr4/y34;->j:J

    sub-long v20, v7, v5

    move-object v11, v3

    invoke-direct/range {v11 .. v21}, Lr4/da;-><init>(JJJJJ)V

    iput-object v3, v0, Lr4/y34;->w:Lr4/da;

    :cond_25
    const/4 v3, 0x0

    iput-object v3, v0, Lr4/y34;->l:Lr4/xb;

    iput v10, v0, Lr4/y34;->h:I

    goto/16 :goto_0

    :cond_26
    :goto_11
    if-ne v6, v9, :cond_27

    const/4 v3, 0x1

    goto :goto_12

    :cond_27
    const/4 v3, 0x0

    :goto_12
    invoke-static {v3}, Lr4/ja;->d(Z)V

    iget-wide v3, v0, Lr4/y34;->j:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_28

    const/4 v3, 0x1

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    :goto_13
    invoke-static {v3}, Lr4/ja;->d(Z)V

    new-instance v3, Lr4/xb;

    iget-wide v4, v0, Lr4/y34;->j:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lr4/xb;-><init>(I)V

    iget-object v4, v0, Lr4/y34;->d:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lr4/y34;->l:Lr4/xb;

    iput v10, v0, Lr4/y34;->h:I

    goto/16 :goto_0

    :cond_29
    :goto_14
    invoke-interface/range {p1 .. p1}, Lr4/b04;->p()J

    move-result-wide v3

    iget-wide v5, v0, Lr4/y34;->j:J

    iget v8, v0, Lr4/y34;->k:I

    int-to-long v10, v8

    add-long/2addr v3, v5

    sub-long/2addr v3, v10

    cmp-long v8, v5, v10

    if-eqz v8, :cond_2a

    iget v5, v0, Lr4/y34;->i:I

    if-ne v5, v7, :cond_2a

    iget-object v5, v0, Lr4/y34;->c:Lr4/xb;

    invoke-virtual {v5, v9}, Lr4/xb;->i(I)V

    iget-object v5, v0, Lr4/y34;->c:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->q()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6, v9}, Lr4/b04;->e([BII)V

    iget-object v5, v0, Lr4/y34;->c:Lr4/xb;

    invoke-static {v5}, Lr4/n34;->d(Lr4/xb;)V

    iget-object v5, v0, Lr4/y34;->c:Lr4/xb;

    invoke-virtual {v5}, Lr4/xb;->o()I

    move-result v5

    invoke-interface {v1, v5}, Lr4/b04;->S(I)V

    invoke-interface/range {p1 .. p1}, Lr4/b04;->k()V

    :cond_2a
    iget-object v5, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    new-instance v6, Lr4/d34;

    iget v7, v0, Lr4/y34;->i:I

    invoke-direct {v6, v7, v3, v4}, Lr4/d34;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lr4/y34;->j:J

    iget v7, v0, Lr4/y34;->k:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2b

    invoke-virtual {v0, v3, v4}, Lr4/y34;->k(J)V

    goto/16 :goto_0

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lr4/y34;->j()V

    goto/16 :goto_0

    :cond_2c
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Lr4/l6;->c(Ljava/lang/String;)Lr4/l6;

    move-result-object v1

    goto :goto_16

    :goto_15
    throw v1

    :goto_16
    goto :goto_15
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lr4/y34;->u:J

    return-wide v0
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/y34;->q:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 5

    iget-object v0, p0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/y34;->k:I

    const/4 v1, -0x1

    iput v1, p0, Lr4/y34;->m:I

    iput v0, p0, Lr4/y34;->n:I

    iput v0, p0, Lr4/y34;->o:I

    iput v0, p0, Lr4/y34;->p:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lr4/y34;->j()V

    return-void

    :cond_0
    iget-object p1, p0, Lr4/y34;->r:[Lr4/x34;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    iget-object v3, v2, Lr4/x34;->b:Lr4/g44;

    invoke-virtual {v3, p3, p4}, Lr4/g44;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v3, p3, p4}, Lr4/g44;->b(J)I

    move-result v4

    :cond_1
    iput v4, v2, Lr4/x34;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/y34;->h:I

    iput v0, p0, Lr4/y34;->k:I

    return-void
.end method

.method public final k(J)V
    .locals 27

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/d34;

    iget-wide v3, v1, Lr4/d34;->b:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_18

    iget-object v1, v0, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lr4/d34;

    iget v1, v3, Lr4/f34;->a:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lr4/y34;->v:I

    const/4 v12, 0x1

    if-ne v4, v12, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    new-instance v13, Lr4/p04;

    invoke-direct {v13}, Lr4/p04;-><init>()V

    const v4, 0x75647461

    invoke-virtual {v3, v4}, Lr4/d34;->e(I)Lr4/e34;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lr4/n34;->b(Lr4/e34;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lr4/j8;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lr4/j8;

    if-eqz v5, :cond_1

    invoke-virtual {v13, v5}, Lr4/p04;->a(Lr4/j8;)Z

    :cond_1
    move-object v15, v4

    move-object/from16 v16, v5

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    const v4, 0x6d657461

    invoke-virtual {v3, v4}, Lr4/d34;->f(I)Lr4/d34;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Lr4/n34;->c(Lr4/d34;)Lr4/j8;

    move-result-object v4

    move-object v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v17, Lr4/v34;->a:Lr4/p03;

    move-object v4, v13

    move-object v14, v10

    move-object/from16 v10, v17

    invoke-static/range {v3 .. v10}, Lr4/n34;->a(Lr4/d34;Lr4/p04;JLr4/fz3;ZZLr4/p03;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lr4/y34;->q:Lr4/d04;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v11, v6

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_4
    const-wide/16 v18, 0x0

    if-ge v9, v5, :cond_10

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Lr4/g44;

    iget v2, v8, Lr4/g44;->b:I

    if-nez v2, :cond_4

    move-object v7, v0

    move-object/from16 v23, v3

    move/from16 v24, v5

    const/4 v0, -0x1

    goto/16 :goto_b

    :cond_4
    iget-object v2, v8, Lr4/g44;->a:Lr4/d44;

    move-object/from16 v21, v1

    iget-wide v0, v2, Lr4/d44;->e:J

    cmp-long v22, v0, v6

    if-eqz v22, :cond_5

    goto :goto_5

    :cond_5
    iget-wide v0, v8, Lr4/g44;->h:J

    :goto_5
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    new-instance v6, Lr4/x34;

    iget v7, v2, Lr4/d44;->b:I

    invoke-interface {v4, v9, v7}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object v7

    invoke-direct {v6, v2, v8, v7}, Lr4/x34;-><init>(Lr4/d44;Lr4/g44;Lr4/d14;)V

    iget v7, v8, Lr4/g44;->e:I

    move-object/from16 v23, v3

    iget-object v3, v2, Lr4/d44;->f:Lr4/e5;

    invoke-virtual {v3}, Lr4/e5;->a()Lr4/c5;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1e

    invoke-virtual {v3, v7}, Lr4/c5;->o(I)Lr4/c5;

    iget v7, v2, Lr4/d44;->b:I

    move/from16 v24, v5

    const/4 v5, 0x2

    if-ne v7, v5, :cond_6

    cmp-long v5, v0, v18

    if-lez v5, :cond_6

    iget v5, v8, Lr4/g44;->b:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_6

    int-to-float v5, v5

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    div-float/2addr v5, v0

    invoke-virtual {v3, v5}, Lr4/c5;->u(F)Lr4/c5;

    :cond_6
    iget v0, v2, Lr4/d44;->b:I

    sget-object v1, Lr4/u34;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v13}, Lr4/p04;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v13, Lr4/p04;->a:I

    invoke-virtual {v3, v0}, Lr4/c5;->E(I)Lr4/c5;

    iget v0, v13, Lr4/p04;->b:I

    invoke-virtual {v3, v0}, Lr4/c5;->F(I)Lr4/c5;

    :cond_7
    iget v0, v2, Lr4/d44;->b:I

    const/4 v1, 0x2

    new-array v5, v1, [Lr4/j8;

    const/4 v1, 0x0

    aput-object v15, v5, v1

    move-object/from16 v7, p0

    iget-object v8, v7, Lr4/y34;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v1, 0x1

    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    new-instance v8, Lr4/j8;

    iget-object v1, v7, Lr4/y34;->g:Ljava/util/List;

    invoke-direct {v8, v1}, Lr4/j8;-><init>(Ljava/util/List;)V

    const/4 v1, 0x1

    :goto_6
    aput-object v8, v5, v1

    new-instance v8, Lr4/j8;

    move-wide/from16 v25, v11

    const/4 v1, 0x0

    new-array v11, v1, [Lr4/i8;

    invoke-direct {v8, v11}, Lr4/j8;-><init>([Lr4/i8;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    if-eqz v16, :cond_b

    move-object/from16 v8, v16

    goto :goto_8

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    if-eqz v14, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v14}, Lr4/j8;->a()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {v14, v0}, Lr4/j8;->h(I)Lr4/i8;

    move-result-object v1

    instance-of v11, v1, Lr4/aa;

    if-eqz v11, :cond_a

    check-cast v1, Lr4/aa;

    iget-object v11, v1, Lr4/aa;->a:Ljava/lang/String;

    const-string v12, "com.android.capture.fps"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v8, Lr4/j8;

    const/4 v0, 0x1

    new-array v11, v0, [Lr4/i8;

    const/4 v0, 0x0

    aput-object v1, v11, v0

    invoke-direct {v8, v11}, Lr4/j8;-><init>([Lr4/i8;)V

    goto :goto_8

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    aget-object v1, v5, v0

    invoke-virtual {v8, v1}, Lr4/j8;->j(Lr4/j8;)Lr4/j8;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v8}, Lr4/j8;->a()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v3, v8}, Lr4/c5;->l(Lr4/j8;)Lr4/c5;

    :cond_d
    iget-object v0, v6, Lr4/x34;->c:Lr4/d14;

    invoke-virtual {v3}, Lr4/c5;->I()Lr4/e5;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/d14;->f(Lr4/e5;)V

    iget v0, v2, Lr4/d44;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, -0x1

    if-ne v10, v0, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    move v10, v1

    goto :goto_a

    :cond_e
    const/4 v0, -0x1

    :cond_f
    :goto_a
    move-object/from16 v1, v21

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v11, v25

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object v0, v7

    move-object/from16 v3, v23

    move/from16 v5, v24

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4

    :cond_10
    move-object v7, v0

    const/4 v0, -0x1

    iput v10, v7, Lr4/y34;->t:I

    iput-wide v11, v7, Lr4/y34;->u:J

    const/4 v2, 0x0

    new-array v3, v2, [Lr4/x34;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lr4/x34;

    iput-object v1, v7, Lr4/y34;->r:[Lr4/x34;

    array-length v2, v1

    new-array v3, v2, [[J

    new-array v5, v2, [I

    new-array v6, v2, [J

    new-array v2, v2, [Z

    const/4 v8, 0x0

    :goto_c
    array-length v9, v1

    if-ge v8, v9, :cond_11

    aget-object v9, v1, v8

    iget-object v9, v9, Lr4/x34;->b:Lr4/g44;

    iget v9, v9, Lr4/g44;->b:I

    new-array v9, v9, [J

    aput-object v9, v3, v8

    aget-object v9, v1, v8

    iget-object v9, v9, Lr4/x34;->b:Lr4/g44;

    iget-object v9, v9, Lr4/g44;->f:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    aput-wide v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    const/4 v8, 0x0

    :goto_d
    array-length v9, v1

    if-ge v8, v9, :cond_15

    const-wide v11, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/4 v13, -0x1

    :goto_e
    array-length v14, v1

    if-ge v9, v14, :cond_13

    aget-boolean v14, v2, v9

    if-nez v14, :cond_12

    aget-wide v14, v6, v9

    cmp-long v16, v14, v11

    if-gtz v16, :cond_12

    move v13, v9

    move-wide v11, v14

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_13
    aget v9, v5, v13

    aget-object v11, v3, v13

    aput-wide v18, v11, v9

    aget-object v12, v1, v13

    iget-object v12, v12, Lr4/x34;->b:Lr4/g44;

    iget-object v14, v12, Lr4/g44;->d:[I

    aget v14, v14, v9

    int-to-long v14, v14

    add-long v18, v18, v14

    const/4 v14, 0x1

    add-int/2addr v9, v14

    aput v9, v5, v13

    array-length v11, v11

    if-ge v9, v11, :cond_14

    iget-object v11, v12, Lr4/g44;->f:[J

    aget-wide v15, v11, v9

    aput-wide v15, v6, v13

    goto :goto_d

    :cond_14
    aput-boolean v14, v2, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_15
    iput-object v3, v7, Lr4/y34;->s:[[J

    invoke-interface {v4}, Lr4/d04;->y()V

    invoke-interface {v4, v7}, Lr4/d04;->j(Lr4/z04;)V

    iget-object v0, v7, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    iput v0, v7, Lr4/y34;->h:I

    goto :goto_f

    :cond_16
    move-object v7, v0

    iget-object v0, v7, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v7, Lr4/y34;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/d34;

    invoke-virtual {v0, v3}, Lr4/d34;->d(Lr4/d34;)V

    :cond_17
    :goto_f
    move-object v0, v7

    goto/16 :goto_0

    :cond_18
    move-object v7, v0

    iget v0, v7, Lr4/y34;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lr4/y34;->j()V

    :cond_19
    return-void
.end method
