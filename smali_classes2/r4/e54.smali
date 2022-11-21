.class public final Lr4/e54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m54;


# instance fields
.field public final a:Lr4/wb;

.field public final b:Lr4/xb;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lr4/d14;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Lr4/e5;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/wb;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lr4/wb;-><init>([BI)V

    iput-object v0, p0, Lr4/e54;->a:Lr4/wb;

    new-instance v1, Lr4/xb;

    iget-object v0, v0, Lr4/wb;->a:[B

    invoke-direct {v1, v0}, Lr4/xb;-><init>([B)V

    iput-object v1, p0, Lr4/e54;->b:Lr4/xb;

    const/4 v0, 0x0

    iput v0, p0, Lr4/e54;->f:I

    iput v0, p0, Lr4/e54;->g:I

    iput-boolean v0, p0, Lr4/e54;->h:Z

    iput-boolean v0, p0, Lr4/e54;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/e54;->m:J

    iput-object p1, p0, Lr4/e54;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr4/d04;Lr4/z64;)V
    .locals 1

    invoke-virtual {p2}, Lr4/z64;->a()V

    invoke-virtual {p2}, Lr4/z64;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/e54;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/z64;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    iput-object p1, p0, Lr4/e54;->e:Lr4/d14;

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 10

    iget-object v0, p0, Lr4/e54;->e:Lr4/d14;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    if-lez v0, :cond_c

    iget v0, p0, Lr4/e54;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    iget v1, p0, Lr4/e54;->l:I

    iget v3, p0, Lr4/e54;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lr4/e54;->e:Lr4/d14;

    invoke-static {v1, p1, v0}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iget v1, p0, Lr4/e54;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lr4/e54;->g:I

    iget v7, p0, Lr4/e54;->l:I

    if-ne v1, v7, :cond_0

    iget-wide v4, p0, Lr4/e54;->m:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lr4/e54;->e:Lr4/d14;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lr4/d14;->e(JIIILr4/c14;)V

    iget-wide v0, p0, Lr4/e54;->m:J

    iget-wide v3, p0, Lr4/e54;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lr4/e54;->m:J

    :cond_1
    iput v2, p0, Lr4/e54;->f:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr4/e54;->b:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v3

    iget v4, p0, Lr4/e54;->g:I

    const/16 v5, 0x10

    rsub-int/lit8 v4, v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lr4/e54;->g:I

    invoke-virtual {p1, v0, v4, v3}, Lr4/xb;->u([BII)V

    iget v0, p0, Lr4/e54;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lr4/e54;->g:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lr4/e54;->a:Lr4/wb;

    invoke-virtual {v0, v2}, Lr4/wb;->d(I)V

    iget-object v0, p0, Lr4/e54;->a:Lr4/wb;

    invoke-static {v0}, Lr4/jz3;->a(Lr4/wb;)Lr4/iz3;

    move-result-object v0

    iget-object v3, p0, Lr4/e54;->k:Lr4/e5;

    const-string v4, "audio/ac4"

    if-eqz v3, :cond_3

    iget v6, v3, Lr4/e5;->y:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Lr4/iz3;->a:I

    iget v7, v3, Lr4/e5;->z:I

    if-ne v6, v7, :cond_3

    iget-object v3, v3, Lr4/e5;->l:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Lr4/c5;

    invoke-direct {v3}, Lr4/c5;-><init>()V

    iget-object v6, p0, Lr4/e54;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lr4/c5;->d(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v3, v4}, Lr4/c5;->n(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v3, v1}, Lr4/c5;->B(I)Lr4/c5;

    iget v4, v0, Lr4/iz3;->a:I

    invoke-virtual {v3, v4}, Lr4/c5;->C(I)Lr4/c5;

    iget-object v4, p0, Lr4/e54;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lr4/c5;->g(Ljava/lang/String;)Lr4/c5;

    invoke-virtual {v3}, Lr4/c5;->I()Lr4/e5;

    move-result-object v3

    iput-object v3, p0, Lr4/e54;->k:Lr4/e5;

    iget-object v4, p0, Lr4/e54;->e:Lr4/d14;

    invoke-interface {v4, v3}, Lr4/d14;->f(Lr4/e5;)V

    :cond_4
    iget v3, v0, Lr4/iz3;->b:I

    iput v3, p0, Lr4/e54;->l:I

    iget v0, v0, Lr4/iz3;->c:I

    int-to-long v3, v0

    const-wide/32 v6, 0xf4240

    mul-long v3, v3, v6

    iget-object v0, p0, Lr4/e54;->k:Lr4/e5;

    iget v0, v0, Lr4/e5;->z:I

    int-to-long v6, v0

    div-long/2addr v3, v6

    iput-wide v3, p0, Lr4/e54;->j:J

    iget-object v0, p0, Lr4/e54;->b:Lr4/xb;

    invoke-virtual {v0, v2}, Lr4/xb;->p(I)V

    iget-object v0, p0, Lr4/e54;->e:Lr4/d14;

    iget-object v2, p0, Lr4/e54;->b:Lr4/xb;

    invoke-static {v0, v2, v5}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    iput v1, p0, Lr4/e54;->f:I

    goto/16 :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lr4/e54;->h:Z

    const/16 v4, 0xac

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lr4/e54;->h:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lr4/e54;->h:Z

    const/16 v4, 0x40

    const/16 v5, 0x41

    if-eq v0, v4, :cond_9

    if-ne v0, v5, :cond_5

    goto :goto_4

    :cond_9
    if-eq v0, v5, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lr4/e54;->i:Z

    iput v3, p0, Lr4/e54;->f:I

    iget-object v0, p0, Lr4/e54;->b:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    const/16 v6, -0x54

    aput-byte v6, v0, v2

    iget-object v0, p0, Lr4/e54;->b:Lr4/xb;

    invoke-virtual {v0}, Lr4/xb;->q()[B

    move-result-object v0

    iget-boolean v2, p0, Lr4/e54;->i:Z

    if-eq v3, v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v4, 0x41

    :goto_6
    aput-byte v4, v0, v3

    iput v1, p0, Lr4/e54;->g:I

    goto/16 :goto_0

    :cond_c
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

    iput-wide p1, p0, Lr4/e54;->m:J

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lr4/e54;->f:I

    iput v0, p0, Lr4/e54;->g:I

    iput-boolean v0, p0, Lr4/e54;->h:Z

    iput-boolean v0, p0, Lr4/e54;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lr4/e54;->m:J

    return-void
.end method
