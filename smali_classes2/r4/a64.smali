.class public final Lr4/a64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# instance fields
.field public final a:Lr4/xb;

.field public final b:Lr4/t04;

.field public final c:Ljava/lang/String;

.field public d:Lr4/d14;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr4/a64;->f:I

    new-instance v1, Lr4/xb;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lr4/xb;-><init>(I)V

    iput-object v1, p0, Lr4/a64;->a:Lr4/xb;

    invoke-virtual {v1}, Lr4/xb;->q()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lr4/t04;

    invoke-direct {v0}, Lr4/t04;-><init>()V

    iput-object v0, p0, Lr4/a64;->b:Lr4/t04;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/a64;->l:J

    iput-object p1, p0, Lr4/a64;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 1

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/a64;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iput-object p1, p0, Lr4/a64;->d:Lr4/d14;

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 10

    iget-object v0, p0, Lr4/a64;->d:Lr4/d14;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lr4/a64;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    iget v1, p0, Lr4/a64;->k:I

    iget v3, p0, Lr4/a64;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lr4/a64;->d:Lr4/d14;

    invoke-static {v1, p1, v0}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v1, p0, Lr4/a64;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lr4/a64;->g:I

    iget v7, p0, Lr4/a64;->k:I

    if-lt v1, v7, :cond_0

    iget-wide v4, p0, Lr4/a64;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lr4/a64;->d:Lr4/d14;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lr4/d14;->e(JIIILr4/c14;)V

    iget-wide v0, p0, Lr4/a64;->l:J

    iget-wide v3, p0, Lr4/a64;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lr4/a64;->l:J

    :cond_1
    iput v2, p0, Lr4/a64;->g:I

    iput v2, p0, Lr4/a64;->f:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    iget v4, p0, Lr4/a64;->g:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lr4/a64;->a:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->q()[B

    move-result-object v4

    iget v6, p0, Lr4/a64;->g:I

    invoke-virtual {p1, v4, v6, v0}, Lr4/xb;->u([BII)V

    iget v4, p0, Lr4/a64;->g:I

    add-int/2addr v4, v0

    iput v4, p0, Lr4/a64;->g:I

    if-lt v4, v5, :cond_0

    iget-object v0, p0, Lr4/a64;->a:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/a64;->b:Lr4/t04;

    iget-object v4, p0, Lr4/a64;->a:Lr4/xb;

    invoke-virtual {v4}, Lr4/xb;->D()I

    move-result v4

    invoke-virtual {v0, v4}, Lr4/t04;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    iput v2, p0, Lr4/a64;->g:I

    iput v3, p0, Lr4/a64;->f:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lr4/a64;->b:Lr4/t04;

    iget v4, v0, Lr4/t04;->c:I

    iput v4, p0, Lr4/a64;->k:I

    iget-boolean v4, p0, Lr4/a64;->h:Z

    if-nez v4, :cond_4

    iget v4, v0, Lr4/t04;->g:I

    int-to-long v6, v4

    const-wide/32 v8, 0xf4240

    mul-long v6, v6, v8

    iget v0, v0, Lr4/t04;->d:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    iput-wide v6, p0, Lr4/a64;->j:J

    new-instance v0, Lr4/c5;

    invoke-direct {v0}, Lr4/c5;-><init>()V

    iget-object v4, p0, Lr4/a64;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    iget-object v4, p0, Lr4/a64;->b:Lr4/t04;

    iget-object v4, v4, Lr4/t04;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    const/16 v4, 0x1000

    invoke-virtual {v0, v4}, Lr4/c5;->o(I)Lr4/c5;

    iget-object v4, p0, Lr4/a64;->b:Lr4/t04;

    iget v4, v4, Lr4/t04;->e:I

    invoke-virtual {v0, v4}, Lr4/c5;->B(I)Lr4/c5;

    iget-object v4, p0, Lr4/a64;->b:Lr4/t04;

    iget v4, v4, Lr4/t04;->d:I

    invoke-virtual {v0, v4}, Lr4/c5;->C(I)Lr4/c5;

    iget-object v4, p0, Lr4/a64;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v0}, Lr4/c5;->I()Lr4/e5;

    move-result-object v0

    iget-object v4, p0, Lr4/a64;->d:Lr4/d14;

    invoke-interface {v4, v0}, Lr4/d14;->f(Lr4/e5;)V

    iput-boolean v3, p0, Lr4/a64;->h:Z

    :cond_4
    iget-object v0, p0, Lr4/a64;->a:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/a64;->d:Lr4/d14;

    iget-object v2, p0, Lr4/a64;->a:Lr4/xb;

    invoke-static {v0, v2, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iput v1, p0, Lr4/a64;->f:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual {p1}, Lr4/xb;->o()I

    move-result v4

    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_9

    aget-byte v6, v0, v4

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xff

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    iget-boolean v8, p0, Lr4/a64;->i:Z

    if-eqz v8, :cond_7

    and-int/lit16 v6, v6, 0xe0

    const/16 v8, 0xe0

    if-ne v6, v8, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    iput-boolean v7, p0, Lr4/a64;->i:Z

    if-eqz v6, :cond_8

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Lr4/xb;->p(I)V

    iput-boolean v2, p0, Lr4/a64;->i:Z

    iget-object v2, p0, Lr4/a64;->a:Lr4/xb;

    invoke-virtual {v2}, Lr4/xb;->q()[B

    move-result-object v2

    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    iput v1, p0, Lr4/a64;->g:I

    iput v3, p0, Lr4/a64;->f:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v5}, Lr4/xb;->p(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lr4/a64;->l:J

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lr4/a64;->f:I

    iput v0, p0, Lr4/a64;->g:I

    iput-boolean v0, p0, Lr4/a64;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/a64;->l:J

    return-void
.end method
