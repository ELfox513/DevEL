.class public final Lr4/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lr4/zf;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/jg;

.field public d:I

.field public e:I

.field public f:J

.field public g:Lr4/eg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lr4/cg;->a:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lr4/cg;->b:Ljava/util/Stack;

    new-instance v0, Lr4/jg;

    invoke-direct {v0}, Lr4/jg;-><init>()V

    iput-object v0, p0, Lr4/cg;->c:Lr4/jg;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr4/cg;->d:I

    iget-object v0, p0, Lr4/cg;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p0, Lr4/cg;->c:Lr4/jg;

    invoke-virtual {v0}, Lr4/jg;->a()V

    return-void
.end method

.method public final b(Lr4/eg;)V
    .locals 0

    iput-object p1, p0, Lr4/cg;->g:Lr4/eg;

    return-void
.end method

.method public final c(Lr4/of;)Z
    .locals 11

    iget-object v0, p0, Lr4/cg;->g:Lr4/eg;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/vk;->d(Z)V

    :goto_1
    iget-object v0, p0, Lr4/cg;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lr4/of;->h()J

    move-result-wide v3

    iget-object v0, p0, Lr4/cg;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/zf;

    invoke-static {v0}, Lr4/zf;->b(Lr4/zf;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lr4/cg;->g:Lr4/eg;

    iget-object v0, p0, Lr4/cg;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/zf;

    invoke-static {v0}, Lr4/zf;->a(Lr4/zf;)I

    move-result v0

    iget-object p1, p1, Lr4/eg;->a:Lr4/hg;

    invoke-virtual {p1, v0}, Lr4/hg;->c(I)V

    return v1

    :cond_2
    :goto_2
    iget v0, p0, Lr4/cg;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v0, :cond_6

    iget-object v0, p0, Lr4/cg;->c:Lr4/jg;

    invoke-virtual {v0, p1, v1, v2, v4}, Lr4/jg;->e(Lr4/of;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lr4/of;->g()V

    :goto_3
    iget-object v0, p0, Lr4/cg;->a:[B

    invoke-virtual {p1, v0, v2, v4, v2}, Lr4/of;->e([BIIZ)Z

    iget-object v0, p0, Lr4/cg;->a:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lr4/jg;->c(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    if-gt v0, v4, :cond_3

    iget-object v5, p0, Lr4/cg;->a:[B

    invoke-static {v5, v0, v2}, Lr4/jg;->d([BIZ)J

    move-result-wide v5

    long-to-int v6, v5

    iget-object v5, p0, Lr4/cg;->g:Lr4/eg;

    iget-object v5, v5, Lr4/eg;->a:Lr4/hg;

    invoke-static {v6}, Lr4/hg;->i(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v0, v2}, Lr4/of;->d(IZ)Z

    int-to-long v5, v6

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v1, v2}, Lr4/of;->d(IZ)Z

    goto :goto_3

    :cond_4
    :goto_4
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    return v2

    :cond_5
    long-to-int v0, v5

    iput v0, p0, Lr4/cg;->e:I

    iput v1, p0, Lr4/cg;->d:I

    goto :goto_5

    :cond_6
    if-ne v0, v1, :cond_7

    :goto_5
    iget-object v0, p0, Lr4/cg;->c:Lr4/jg;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v2, v1, v5}, Lr4/jg;->e(Lr4/of;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lr4/cg;->f:J

    iput v3, p0, Lr4/cg;->d:I

    :cond_7
    iget-object v0, p0, Lr4/cg;->g:Lr4/eg;

    iget v5, p0, Lr4/cg;->e:I

    iget-object v0, v0, Lr4/eg;->a:Lr4/hg;

    invoke-static {v5}, Lr4/hg;->h(I)I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_11

    const-wide/16 v5, 0x8

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    if-eq v0, v4, :cond_b

    iget-wide v7, p0, Lr4/cg;->f:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_9

    cmp-long v0, v7, v5

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid float size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_6
    iget-object v0, p0, Lr4/cg;->g:Lr4/eg;

    iget v3, p0, Lr4/cg;->e:I

    long-to-int v5, v7

    invoke-virtual {p0, p1, v5}, Lr4/cg;->d(Lr4/of;I)J

    move-result-wide v6

    if-ne v5, v4, :cond_a

    long-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v4, p1

    goto :goto_7

    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    :goto_7
    iget-object p1, v0, Lr4/eg;->a:Lr4/hg;

    invoke-virtual {p1, v3, v4, v5}, Lr4/hg;->e(ID)V

    iput v2, p0, Lr4/cg;->d:I

    return v1

    :cond_b
    iget-object v0, p0, Lr4/cg;->g:Lr4/eg;

    iget v3, p0, Lr4/cg;->e:I

    iget-wide v4, p0, Lr4/cg;->f:J

    iget-object v0, v0, Lr4/eg;->a:Lr4/hg;

    long-to-int v5, v4

    invoke-virtual {v0, v3, v5, p1}, Lr4/hg;->g(IILr4/of;)V

    iput v2, p0, Lr4/cg;->d:I

    return v1

    :cond_c
    iget-wide v3, p0, Lr4/cg;->f:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_e

    iget-object v0, p0, Lr4/cg;->g:Lr4/eg;

    iget v5, p0, Lr4/cg;->e:I

    long-to-int v4, v3

    if-nez v4, :cond_d

    const-string p1, ""

    goto :goto_8

    :cond_d
    new-array v3, v4, [B

    invoke-virtual {p1, v3, v2, v4, v2}, Lr4/of;->b([BIIZ)Z

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    :goto_8
    iget-object v0, v0, Lr4/eg;->a:Lr4/hg;

    invoke-virtual {v0, v5, p1}, Lr4/hg;->f(ILjava/lang/String;)V

    iput v2, p0, Lr4/cg;->d:I

    return v1

    :cond_e
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "String element size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-wide v3, p0, Lr4/cg;->f:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_10

    iget-object v0, p0, Lr4/cg;->g:Lr4/eg;

    iget v5, p0, Lr4/cg;->e:I

    long-to-int v4, v3

    invoke-virtual {p0, p1, v4}, Lr4/cg;->d(Lr4/of;I)J

    move-result-wide v3

    iget-object p1, v0, Lr4/eg;->a:Lr4/hg;

    invoke-virtual {p1, v5, v3, v4}, Lr4/hg;->d(IJ)V

    iput v2, p0, Lr4/cg;->d:I

    return v1

    :cond_10
    new-instance p1, Lr4/ld;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lr4/ld;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    invoke-virtual {p1}, Lr4/of;->h()J

    move-result-wide v5

    iget-wide v3, p0, Lr4/cg;->f:J

    iget-object p1, p0, Lr4/cg;->b:Ljava/util/Stack;

    new-instance v0, Lr4/zf;

    iget v7, p0, Lr4/cg;->e:I

    add-long/2addr v3, v5

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lr4/zf;-><init>(IJLr4/ag;)V

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lr4/cg;->g:Lr4/eg;

    iget v4, p0, Lr4/cg;->e:I

    iget-wide v7, p0, Lr4/cg;->f:J

    iget-object v3, p1, Lr4/eg;->a:Lr4/hg;

    invoke-virtual/range {v3 .. v8}, Lr4/hg;->b(IJJ)V

    iput v2, p0, Lr4/cg;->d:I

    return v1

    :cond_12
    iget-wide v3, p0, Lr4/cg;->f:J

    long-to-int v0, v3

    invoke-virtual {p1, v0, v2}, Lr4/of;->d(IZ)Z

    iput v2, p0, Lr4/cg;->d:I

    goto/16 :goto_1
.end method

.method public final d(Lr4/of;I)J
    .locals 6

    iget-object v0, p0, Lr4/cg;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lr4/of;->b([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lr4/cg;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method
