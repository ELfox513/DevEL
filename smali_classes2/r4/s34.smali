.class public final Lr4/s34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/d14;

.field public final b:Lr4/f44;

.field public final c:Lr4/xb;

.field public d:Lr4/g44;

.field public e:Lr4/o34;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lr4/xb;

.field public final k:Lr4/xb;

.field public l:Z


# direct methods
.method public constructor <init>(Lr4/d14;Lr4/g44;Lr4/o34;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s34;->a:Lr4/d14;

    iput-object p2, p0, Lr4/s34;->d:Lr4/g44;

    iput-object p3, p0, Lr4/s34;->e:Lr4/o34;

    new-instance p1, Lr4/f44;

    invoke-direct {p1}, Lr4/f44;-><init>()V

    iput-object p1, p0, Lr4/s34;->b:Lr4/f44;

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/s34;->c:Lr4/xb;

    new-instance p1, Lr4/xb;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lr4/xb;-><init>(I)V

    iput-object p1, p0, Lr4/s34;->j:Lr4/xb;

    new-instance p1, Lr4/xb;

    invoke-direct {p1}, Lr4/xb;-><init>()V

    iput-object p1, p0, Lr4/s34;->k:Lr4/xb;

    invoke-virtual {p0, p2, p3}, Lr4/s34;->c(Lr4/g44;Lr4/o34;)V

    return-void
.end method

.method public static synthetic a(Lr4/s34;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/s34;->l:Z

    return p1
.end method

.method public static synthetic b(Lr4/s34;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/s34;->l:Z

    return p0
.end method


# virtual methods
.method public final c(Lr4/g44;Lr4/o34;)V
    .locals 0

    iput-object p1, p0, Lr4/s34;->d:Lr4/g44;

    iput-object p2, p0, Lr4/s34;->e:Lr4/o34;

    iget-object p2, p0, Lr4/s34;->a:Lr4/d14;

    iget-object p1, p1, Lr4/g44;->a:Lr4/d44;

    iget-object p1, p1, Lr4/d44;->f:Lr4/e5;

    invoke-interface {p2, p1}, Lr4/d14;->f(Lr4/e5;)V

    invoke-virtual {p0}, Lr4/s34;->d()V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    const/4 v1, 0x0

    iput v1, v0, Lr4/f44;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lr4/f44;->q:J

    iput-boolean v1, v0, Lr4/f44;->r:Z

    iput-boolean v1, v0, Lr4/f44;->l:Z

    iput-boolean v1, v0, Lr4/f44;->p:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lr4/f44;->n:Lr4/e44;

    iput v1, p0, Lr4/s34;->f:I

    iput v1, p0, Lr4/s34;->h:I

    iput v1, p0, Lr4/s34;->g:I

    iput v1, p0, Lr4/s34;->i:I

    iput-boolean v1, p0, Lr4/s34;->l:Z

    return-void
.end method

.method public final e()J
    .locals 3

    iget-boolean v0, p0, Lr4/s34;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/s34;->d:Lr4/g44;

    iget-object v0, v0, Lr4/g44;->f:[J

    iget v1, p0, Lr4/s34;->f:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    iget v1, p0, Lr4/s34;->f:I

    invoke-virtual {v0, v1}, Lr4/f44;->b(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public final f()J
    .locals 3

    iget-boolean v0, p0, Lr4/s34;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/s34;->d:Lr4/g44;

    iget-object v0, v0, Lr4/g44;->c:[J

    iget v1, p0, Lr4/s34;->f:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    iget-object v0, v0, Lr4/f44;->f:[J

    iget v1, p0, Lr4/s34;->h:I

    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public final g()I
    .locals 2

    iget-boolean v0, p0, Lr4/s34;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/s34;->d:Lr4/g44;

    iget-object v0, v0, Lr4/g44;->d:[I

    iget v1, p0, Lr4/s34;->f:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    iget-object v0, v0, Lr4/f44;->h:[I

    iget v1, p0, Lr4/s34;->f:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public final h()I
    .locals 2

    iget-boolean v0, p0, Lr4/s34;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/s34;->d:Lr4/g44;

    iget-object v0, v0, Lr4/g44;->g:[I

    iget v1, p0, Lr4/s34;->f:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    iget-object v0, v0, Lr4/f44;->k:[Z

    iget v1, p0, Lr4/s34;->f:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lr4/s34;->k()Lr4/e44;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final i()Z
    .locals 5

    iget v0, p0, Lr4/s34;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/s34;->f:I

    iget-boolean v0, p0, Lr4/s34;->l:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lr4/s34;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lr4/s34;->g:I

    iget-object v3, p0, Lr4/s34;->b:Lr4/f44;

    iget-object v3, v3, Lr4/f44;->g:[I

    iget v4, p0, Lr4/s34;->h:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lr4/s34;->h:I

    iput v2, p0, Lr4/s34;->g:I

    return v2

    :cond_1
    return v1
.end method

.method public final j(II)I
    .locals 9

    invoke-virtual {p0}, Lr4/s34;->k()Lr4/e44;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lr4/e44;->d:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    iget-object v0, v0, Lr4/f44;->o:Lr4/xb;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lr4/e44;->e:[B

    invoke-static {v0}, Lr4/lc;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lr4/s34;->k:Lr4/xb;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lr4/xb;->j([BI)V

    iget-object v0, p0, Lr4/s34;->k:Lr4/xb;

    move v2, v3

    :goto_0
    iget-object v3, p0, Lr4/s34;->b:Lr4/f44;

    iget v4, p0, Lr4/s34;->f:I

    invoke-virtual {v3, v4}, Lr4/f44;->c(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    iget-object v6, p0, Lr4/s34;->j:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    if-eq v4, v5, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    iget-object v6, p0, Lr4/s34;->j:Lr4/xb;

    invoke-virtual {v6, v1}, Lr4/xb;->p(I)V

    iget-object v6, p0, Lr4/s34;->a:Lr4/d14;

    iget-object v7, p0, Lr4/s34;->j:Lr4/xb;

    invoke-interface {v6, v7, v4, v4}, Lr4/d14;->c(Lr4/xb;II)V

    iget-object v6, p0, Lr4/s34;->a:Lr4/d14;

    invoke-interface {v6, v0, v2, v4}, Lr4/d14;->c(Lr4/xb;II)V

    if-nez v5, :cond_5

    add-int/2addr v2, v4

    return v2

    :cond_5
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    iget-object v3, p0, Lr4/s34;->c:Lr4/xb;

    invoke-virtual {v3, v7}, Lr4/xb;->i(I)V

    iget-object v3, p0, Lr4/s34;->c:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    aput-byte v1, v3, v1

    aput-byte v4, v3, v4

    aput-byte v1, v3, v6

    int-to-byte p2, p2

    aput-byte p2, v3, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v3, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v3, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, p2

    iget-object p1, p0, Lr4/s34;->a:Lr4/d14;

    iget-object p2, p0, Lr4/s34;->c:Lr4/xb;

    invoke-interface {p1, p2, v7, v4}, Lr4/d14;->c(Lr4/xb;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_6
    iget-object p1, p0, Lr4/s34;->b:Lr4/f44;

    iget-object p1, p1, Lr4/f44;->o:Lr4/xb;

    invoke-virtual {p1}, Lr4/xb;->w()I

    move-result v3

    const/4 v8, -0x2

    invoke-virtual {p1, v8}, Lr4/xb;->s(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    iget-object v0, p0, Lr4/s34;->c:Lr4/xb;

    invoke-virtual {v0, v3}, Lr4/xb;->i(I)V

    iget-object v0, p0, Lr4/s34;->c:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3}, Lr4/xb;->u([BII)V

    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    iget-object p1, p0, Lr4/s34;->c:Lr4/xb;

    :cond_7
    iget-object p2, p0, Lr4/s34;->a:Lr4/d14;

    invoke-interface {p2, p1, v3, v4}, Lr4/d14;->c(Lr4/xb;II)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

.method public final k()Lr4/e44;
    .locals 4

    iget-boolean v0, p0, Lr4/s34;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lr4/s34;->b:Lr4/f44;

    iget-object v2, v0, Lr4/f44;->a:Lr4/o34;

    sget v3, Lr4/lc;->a:I

    iget v2, v2, Lr4/o34;->a:I

    iget-object v0, v0, Lr4/f44;->n:Lr4/e44;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lr4/s34;->d:Lr4/g44;

    iget-object v0, v0, Lr4/g44;->a:Lr4/d44;

    invoke-virtual {v0, v2}, Lr4/d44;->a(I)Lr4/e44;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lr4/e44;->a:Z

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
