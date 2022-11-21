.class public final Lr4/j24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lr4/g24;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/s24;

.field public d:Lr4/k24;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lr4/j24;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lr4/j24;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lr4/s24;

    invoke-direct {v0}, Lr4/s24;-><init>()V

    iput-object v0, p0, Lr4/j24;->c:Lr4/s24;

    return-void
.end method


# virtual methods
.method public final a(Lr4/k24;)V
    .locals 0

    iput-object p1, p0, Lr4/j24;->d:Lr4/k24;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/j24;->e:I

    iget-object v0, p0, Lr4/j24;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lr4/j24;->c:Lr4/s24;

    invoke-virtual {v0}, Lr4/s24;->a()V

    return-void
.end method

.method public final c(Lr4/b04;)Z
    .locals 12

    iget-object v0, p0, Lr4/j24;->d:Lr4/k24;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lr4/j24;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g24;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v2

    invoke-static {v0}, Lr4/g24;->b(Lr4/g24;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lr4/j24;->d:Lr4/k24;

    iget-object v0, p0, Lr4/j24;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g24;

    invoke-static {v0}, Lr4/g24;->a(Lr4/g24;)I

    move-result v0

    check-cast p1, Lr4/m24;

    iget-object p1, p1, Lr4/m24;->a:Lr4/q24;

    invoke-virtual {p1, v0}, Lr4/q24;->g(I)V

    return v1

    :cond_1
    :goto_1
    iget v0, p0, Lr4/j24;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lr4/j24;->c:Lr4/s24;

    invoke-virtual {v0, p1, v1, v4, v3}, Lr4/s24;->b(Lr4/b04;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    invoke-interface {p1}, Lr4/b04;->k()V

    :goto_2
    iget-object v0, p0, Lr4/j24;->a:[B

    move-object v5, p1

    check-cast v5, Lr4/vz3;

    invoke-virtual {v5, v0, v4, v3, v4}, Lr4/vz3;->i([BIIZ)Z

    iget-object v0, p0, Lr4/j24;->a:[B

    aget-byte v0, v0, v4

    invoke-static {v0}, Lr4/s24;->d(I)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    if-gt v0, v3, :cond_2

    iget-object v6, p0, Lr4/j24;->a:[B

    invoke-static {v6, v0, v4}, Lr4/s24;->e([BIZ)J

    move-result-wide v6

    long-to-int v7, v6

    iget-object v6, p0, Lr4/j24;->d:Lr4/k24;

    check-cast v6, Lr4/m24;

    iget-object v6, v6, Lr4/m24;->a:Lr4/q24;

    invoke-static {v7}, Lr4/q24;->o(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v0, v4}, Lr4/vz3;->n(IZ)Z

    int-to-long v5, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v1, v4}, Lr4/vz3;->n(IZ)Z

    goto :goto_2

    :cond_3
    :goto_3
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    return v4

    :cond_4
    long-to-int v0, v5

    iput v0, p0, Lr4/j24;->f:I

    iput v1, p0, Lr4/j24;->e:I

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_6

    :goto_4
    iget-object v0, p0, Lr4/j24;->c:Lr4/s24;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v4, v1, v5}, Lr4/s24;->b(Lr4/b04;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lr4/j24;->g:J

    iput v2, p0, Lr4/j24;->e:I

    :cond_6
    iget-object v0, p0, Lr4/j24;->d:Lr4/k24;

    iget v5, p0, Lr4/j24;->f:I

    check-cast v0, Lr4/m24;

    iget-object v0, v0, Lr4/m24;->a:Lr4/q24;

    invoke-static {v5}, Lr4/q24;->n(I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v5, 0x0

    if-eq v0, v1, :cond_11

    const-wide/16 v6, 0x8

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    if-eq v0, v3, :cond_a

    iget-wide v8, p0, Lr4/j24;->g:J

    const-wide/16 v10, 0x4

    cmp-long v0, v8, v10

    if-eqz v0, :cond_8

    cmp-long v0, v8, v6

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_8
    :goto_5
    iget-object v0, p0, Lr4/j24;->d:Lr4/k24;

    iget v2, p0, Lr4/j24;->f:I

    long-to-int v5, v8

    invoke-virtual {p0, p1, v5}, Lr4/j24;->d(Lr4/b04;I)J

    move-result-wide v6

    if-ne v5, v3, :cond_9

    long-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_6

    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    :goto_6
    check-cast v0, Lr4/m24;

    iget-object p1, v0, Lr4/m24;->a:Lr4/q24;

    invoke-virtual {p1, v2, v5, v6}, Lr4/q24;->k(ID)V

    iput v4, p0, Lr4/j24;->e:I

    return v1

    :cond_a
    iget-object v0, p0, Lr4/j24;->d:Lr4/k24;

    iget v2, p0, Lr4/j24;->f:I

    iget-wide v5, p0, Lr4/j24;->g:J

    check-cast v0, Lr4/m24;

    iget-object v0, v0, Lr4/m24;->a:Lr4/q24;

    long-to-int v3, v5

    invoke-virtual {v0, v2, v3, p1}, Lr4/q24;->m(IILr4/b04;)V

    iput v4, p0, Lr4/j24;->e:I

    return v1

    :cond_b
    iget-wide v2, p0, Lr4/j24;->g:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v2, v6

    if-gtz v0, :cond_e

    iget-object v0, p0, Lr4/j24;->d:Lr4/k24;

    iget v5, p0, Lr4/j24;->f:I

    long-to-int v3, v2

    if-nez v3, :cond_c

    const-string p1, ""

    goto :goto_8

    :cond_c
    new-array v2, v3, [B

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v2, v4, v3, v4}, Lr4/vz3;->f([BIIZ)Z

    :goto_7
    if-lez v3, :cond_d

    add-int/lit8 p1, v3, -0x1

    aget-byte v6, v2, p1

    if-nez v6, :cond_d

    move v3, p1

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    :goto_8
    check-cast v0, Lr4/m24;

    iget-object v0, v0, Lr4/m24;->a:Lr4/q24;

    invoke-virtual {v0, v5, p1}, Lr4/q24;->l(ILjava/lang/String;)V

    iput v4, p0, Lr4/j24;->e:I

    return v1

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_f
    iget-wide v2, p0, Lr4/j24;->g:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_10

    iget-object v0, p0, Lr4/j24;->d:Lr4/k24;

    iget v5, p0, Lr4/j24;->f:I

    long-to-int v3, v2

    invoke-virtual {p0, p1, v3}, Lr4/j24;->d(Lr4/b04;I)J

    move-result-wide v2

    check-cast v0, Lr4/m24;

    iget-object p1, v0, Lr4/m24;->a:Lr4/q24;

    invoke-virtual {p1, v5, v2, v3}, Lr4/q24;->j(IJ)V

    iput v4, p0, Lr4/j24;->e:I

    return v1

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_11
    invoke-interface {p1}, Lr4/b04;->p()J

    move-result-wide v7

    iget-wide v2, p0, Lr4/j24;->g:J

    iget-object p1, p0, Lr4/j24;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lr4/g24;

    iget v6, p0, Lr4/j24;->f:I

    add-long/2addr v2, v7

    invoke-direct {v0, v6, v2, v3, v5}, Lr4/g24;-><init>(IJLr4/i24;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/j24;->d:Lr4/k24;

    iget v6, p0, Lr4/j24;->f:I

    iget-wide v9, p0, Lr4/j24;->g:J

    check-cast p1, Lr4/m24;

    iget-object v5, p1, Lr4/m24;->a:Lr4/q24;

    invoke-virtual/range {v5 .. v10}, Lr4/q24;->d(IJJ)V

    iput v4, p0, Lr4/j24;->e:I

    return v1

    :cond_12
    iget-wide v0, p0, Lr4/j24;->g:J

    move-object v2, p1

    check-cast v2, Lr4/vz3;

    long-to-int v1, v0

    invoke-virtual {v2, v1, v4}, Lr4/vz3;->n(IZ)Z

    iput v4, p0, Lr4/j24;->e:I

    goto/16 :goto_0
.end method

.method public final d(Lr4/b04;I)J
    .locals 6

    iget-object v0, p0, Lr4/j24;->a:[B

    check-cast p1, Lr4/vz3;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lr4/vz3;->f([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lr4/j24;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
