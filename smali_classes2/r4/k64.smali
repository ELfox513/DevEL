.class public final Lr4/k64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a04;


# static fields
.field public static final l:Lr4/g04;


# instance fields
.field public final a:Lr4/fc;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/j64;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/xb;

.field public final d:Lr4/h64;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lr4/g64;

.field public j:Lr4/d04;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/i64;->a:Lr4/g04;

    sput-object v0, Lr4/k64;->l:Lr4/g04;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lr4/fc;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lr4/fc;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/k64;->a:Lr4/fc;

    new-instance v0, Lr4/xb;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/k64;->c:Lr4/xb;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lr4/k64;->b:Landroid/util/SparseArray;

    new-instance v0, Lr4/h64;

    invoke-direct {v0}, Lr4/h64;-><init>()V

    iput-object v0, p0, Lr4/k64;->d:Lr4/h64;

    return-void
.end method


# virtual methods
.method public final e(Lr4/b04;)Z
    .locals 9

    const/16 v0, 0xe

    new-array v1, v0, [B

    check-cast p1, Lr4/vz3;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lr4/vz3;->i([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v0, v7, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0, v2}, Lr4/vz3;->o(IZ)Z

    invoke-virtual {p1, v1, v2, v5, v2}, Lr4/vz3;->i([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne p1, v3, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final f(Lr4/b04;Lr4/w04;)I
    .locals 12

    iget-object v0, p0, Lr4/k64;->j:Lr4/d04;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lr4/b04;->q()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/k64;->d:Lr4/h64;

    invoke-virtual {v0}, Lr4/h64;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/k64;->d:Lr4/h64;

    invoke-virtual {v0, p1, p2}, Lr4/h64;->c(Lr4/b04;Lr4/w04;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lr4/k64;->k:Z

    const/4 v11, 0x1

    if-nez v0, :cond_3

    iput-boolean v11, p0, Lr4/k64;->k:Z

    iget-object v0, p0, Lr4/k64;->d:Lr4/h64;

    invoke-virtual {v0}, Lr4/h64;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    new-instance v0, Lr4/g64;

    iget-object v1, p0, Lr4/k64;->d:Lr4/h64;

    invoke-virtual {v1}, Lr4/h64;->b()Lr4/fc;

    move-result-object v2

    iget-object v1, p0, Lr4/k64;->d:Lr4/h64;

    invoke-virtual {v1}, Lr4/h64;->d()J

    move-result-wide v3

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lr4/g64;-><init>(Lr4/fc;JJ)V

    iput-object v0, p0, Lr4/k64;->i:Lr4/g64;

    iget-object v1, p0, Lr4/k64;->j:Lr4/d04;

    invoke-virtual {v0}, Lr4/rz3;->a()Lr4/z04;

    move-result-object v0

    invoke-interface {v1, v0}, Lr4/d04;->j(Lr4/z04;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lr4/k64;->j:Lr4/d04;

    new-instance v1, Lr4/y04;

    iget-object v2, p0, Lr4/k64;->d:Lr4/h64;

    invoke-virtual {v2}, Lr4/h64;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lr4/y04;-><init>(JJ)V

    invoke-interface {v0, v1}, Lr4/d04;->j(Lr4/z04;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lr4/k64;->i:Lr4/g64;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lr4/rz3;->c()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lr4/k64;->i:Lr4/g64;

    invoke-virtual {v0, p1, p2}, Lr4/rz3;->d(Lr4/b04;Lr4/w04;)I

    move-result p1

    return p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Lr4/b04;->k()V

    cmp-long p2, v7, v9

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lr4/b04;->l()J

    move-result-wide v0

    sub-long/2addr v7, v0

    goto :goto_3

    :cond_6
    move-wide v7, v9

    :goto_3
    const/4 p2, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x4

    cmp-long v2, v7, v0

    if-ltz v2, :cond_7

    goto :goto_4

    :cond_7
    return p2

    :cond_8
    :goto_4
    iget-object v0, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1, v11}, Lr4/b04;->i([BIIZ)Z

    move-result v0

    if-nez v0, :cond_9

    return p2

    :cond_9
    iget-object v0, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->D()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_a

    return p2

    :cond_a
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_b

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    check-cast p1, Lr4/vz3;

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v2, v0, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->v()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    invoke-virtual {p1, p2, v2}, Lr4/vz3;->n(IZ)Z

    return v2

    :cond_b
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v3, 0x6

    if-ne v0, p2, :cond_c

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, p2, v2, v1, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2, v2}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->w()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2, v2}, Lr4/vz3;->n(IZ)Z

    return v2

    :cond_c
    shr-int/lit8 p2, v0, 0x8

    if-eq p2, v11, :cond_d

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v11, v2}, Lr4/vz3;->n(IZ)Z

    return v2

    :cond_d
    and-int/lit16 p2, v0, 0xff

    iget-object v0, p0, Lr4/k64;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j64;

    iget-boolean v4, p0, Lr4/k64;->e:Z

    if-nez v4, :cond_13

    if-nez v0, :cond_11

    const/16 v4, 0xbd

    const/4 v5, 0x0

    if-ne p2, v4, :cond_e

    new-instance v4, Lr4/b54;

    invoke-direct {v4, v5}, Lr4/b54;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lr4/k64;->f:Z

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v5

    iput-wide v5, p0, Lr4/k64;->h:J

    :goto_5
    move-object v5, v4

    goto :goto_6

    :cond_e
    and-int/lit16 v4, p2, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_f

    new-instance v4, Lr4/a64;

    invoke-direct {v4, v5}, Lr4/a64;-><init>(Ljava/lang/String;)V

    iput-boolean v11, p0, Lr4/k64;->f:Z

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v5

    iput-wide v5, p0, Lr4/k64;->h:J

    goto :goto_5

    :cond_f
    and-int/lit16 v4, p2, 0xf0

    const/16 v6, 0xe0

    if-ne v4, v6, :cond_10

    new-instance v4, Lr4/o54;

    invoke-direct {v4, v5}, Lr4/o54;-><init>(Lr4/c74;)V

    iput-boolean v11, p0, Lr4/k64;->g:Z

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v5

    iput-wide v5, p0, Lr4/k64;->h:J

    goto :goto_5

    :cond_10
    :goto_6
    if-eqz v5, :cond_11

    new-instance v0, Lr4/z64;

    const/high16 v4, -0x80000000

    const/16 v6, 0x100

    invoke-direct {v0, v4, p2, v6}, Lr4/z64;-><init>(III)V

    iget-object v4, p0, Lr4/k64;->j:Lr4/d04;

    invoke-interface {v5, v4, v0}, Lr4/m54;->a(Lr4/d04;Lr4/z64;)V

    new-instance v0, Lr4/j64;

    iget-object v4, p0, Lr4/k64;->a:Lr4/fc;

    invoke-direct {v0, v5, v4}, Lr4/j64;-><init>(Lr4/m54;Lr4/fc;)V

    iget-object v4, p0, Lr4/k64;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    iget-boolean p2, p0, Lr4/k64;->f:Z

    const-wide/32 v4, 0x100000

    if-eqz p2, :cond_12

    iget-boolean p2, p0, Lr4/k64;->g:Z

    if-eqz p2, :cond_12

    iget-wide v4, p0, Lr4/k64;->h:J

    const-wide/16 v6, 0x2000

    add-long/2addr v4, v6

    :cond_12
    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-lez p2, :cond_13

    iput-boolean v11, p0, Lr4/k64;->e:Z

    iget-object p2, p0, Lr4/k64;->j:Lr4/d04;

    invoke-interface {p2}, Lr4/d04;->y()V

    :cond_13
    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->q()[B

    move-result-object p2

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, p2, v2, v1, v2}, Lr4/vz3;->i([BIIZ)Z

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2, v2}, Lr4/xb;->p(I)V

    iget-object p2, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p2}, Lr4/xb;->w()I

    move-result p2

    add-int/2addr p2, v3

    if-nez v0, :cond_14

    invoke-virtual {p1, p2, v2}, Lr4/vz3;->n(IZ)Z

    goto :goto_7

    :cond_14
    iget-object v1, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {v1, p2}, Lr4/xb;->i(I)V

    iget-object v1, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    invoke-virtual {p1, v1, v2, p2, v2}, Lr4/vz3;->f([BIIZ)Z

    iget-object p1, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p1, v3}, Lr4/xb;->p(I)V

    iget-object p1, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {v0, p1}, Lr4/j64;->b(Lr4/xb;)V

    iget-object p1, p0, Lr4/k64;->c:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->r()I

    move-result p2

    invoke-virtual {p1, p2}, Lr4/xb;->n(I)V

    :goto_7
    return v2
.end method

.method public final h(Lr4/d04;)V
    .locals 0

    iput-object p1, p0, Lr4/k64;->j:Lr4/d04;

    return-void
.end method

.method public final i(JJ)V
    .locals 3

    iget-object p1, p0, Lr4/k64;->a:Lr4/fc;

    invoke-virtual {p1}, Lr4/fc;->c()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lr4/k64;->a:Lr4/fc;

    invoke-virtual {p1}, Lr4/fc;->a()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lr4/k64;->a:Lr4/fc;

    invoke-virtual {p1, p3, p4}, Lr4/fc;->d(J)V

    :cond_1
    iget-object p1, p0, Lr4/k64;->i:Lr4/g64;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p4}, Lr4/rz3;->b(J)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lr4/k64;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    iget-object p1, p0, Lr4/k64;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/j64;

    invoke-virtual {p1}, Lr4/j64;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
