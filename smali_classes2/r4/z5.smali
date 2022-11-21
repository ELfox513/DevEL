.class public final Lr4/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/et3;

.field public final b:Ljava/lang/Object;

.field public final c:[Lr4/vu3;

.field public d:Z

.field public e:Z

.field public f:Lr4/a6;

.field public g:Z

.field public final h:[Z

.field public final i:[Lr4/h7;

.field public final j:Lr4/aw3;

.field public final k:Lr4/j6;

.field public l:Lr4/z5;

.field public m:Lr4/j44;

.field public n:Lr4/cw3;

.field public o:J


# direct methods
.method public constructor <init>([Lr4/h7;JLr4/aw3;Lr4/qw3;Lr4/j6;Lr4/a6;Lr4/cw3;[B)V
    .locals 8

    move-object v0, p0

    move-object v1, p6

    move-object v2, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lr4/z5;->i:[Lr4/h7;

    move-wide v3, p2

    iput-wide v3, v0, Lr4/z5;->o:J

    move-object v3, p4

    iput-object v3, v0, Lr4/z5;->j:Lr4/aw3;

    iput-object v1, v0, Lr4/z5;->k:Lr4/j6;

    iget-object v3, v2, Lr4/a6;->a:Lr4/ft3;

    iget-object v4, v3, Lr4/f04;->a:Ljava/lang/Object;

    iput-object v4, v0, Lr4/z5;->b:Ljava/lang/Object;

    iput-object v2, v0, Lr4/z5;->f:Lr4/a6;

    sget-object v4, Lr4/j44;->d:Lr4/j44;

    iput-object v4, v0, Lr4/z5;->m:Lr4/j44;

    move-object/from16 v4, p8

    iput-object v4, v0, Lr4/z5;->n:Lr4/cw3;

    const/4 v4, 0x2

    new-array v5, v4, [Lr4/vu3;

    iput-object v5, v0, Lr4/z5;->c:[Lr4/vu3;

    new-array v4, v4, [Z

    iput-object v4, v0, Lr4/z5;->h:[Z

    iget-wide v4, v2, Lr4/a6;->b:J

    iget-wide v6, v2, Lr4/a6;->d:J

    move-object v2, p5

    invoke-virtual {p6, v3, p5, v4, v5}, Lr4/j6;->o(Lr4/ft3;Lr4/qw3;J)Lr4/et3;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v2

    if-eqz v4, :cond_0

    new-instance v2, Lr4/ls3;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object p1, v2

    move-object p2, v1

    move p3, v3

    move-wide p4, v4

    move-wide p6, v6

    invoke-direct/range {p1 .. p7}, Lr4/ls3;-><init>(Lr4/et3;ZJJ)V

    move-object v1, v2

    :cond_0
    iput-object v1, v0, Lr4/z5;->a:Lr4/et3;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lr4/z5;->o:J

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/z5;->o:J

    return-void
.end method

.method public final c()J
    .locals 4

    iget-object v0, p0, Lr4/z5;->f:Lr4/a6;

    iget-wide v0, v0, Lr4/a6;->b:J

    iget-wide v2, p0, Lr4/z5;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()Z
    .locals 7

    iget-boolean v0, p0, Lr4/z5;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr4/z5;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->f()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final e()J
    .locals 5

    iget-boolean v0, p0, Lr4/z5;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/z5;->f:Lr4/a6;

    iget-wide v0, v0, Lr4/a6;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lr4/z5;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->f()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/z5;->f:Lr4/a6;

    iget-wide v0, v0, Lr4/a6;->e:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final f()J
    .locals 2

    iget-boolean v0, p0, Lr4/z5;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(FLr4/e8;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/z5;->d:Z

    iget-object v0, p0, Lr4/z5;->a:Lr4/et3;

    invoke-interface {v0}, Lr4/et3;->e()Lr4/j44;

    move-result-object v0

    iput-object v0, p0, Lr4/z5;->m:Lr4/j44;

    invoke-virtual {p0, p1, p2}, Lr4/z5;->j(FLr4/e8;)Lr4/cw3;

    move-result-object p1

    iget-object p2, p0, Lr4/z5;->f:Lr4/a6;

    iget-wide v0, p2, Lr4/a6;->b:J

    iget-wide v2, p2, Lr4/a6;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lr4/z5;->k(Lr4/cw3;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lr4/z5;->o:J

    iget-object v2, p0, Lr4/z5;->f:Lr4/a6;

    iget-wide v3, v2, Lr4/a6;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lr4/z5;->o:J

    invoke-virtual {v2, p1, p2}, Lr4/a6;->a(J)Lr4/a6;

    move-result-object p1

    iput-object p1, p0, Lr4/z5;->f:Lr4/a6;

    return-void
.end method

.method public final h(J)V
    .locals 3

    invoke-virtual {p0}, Lr4/z5;->u()Z

    move-result v0

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-boolean v0, p0, Lr4/z5;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/z5;->a:Lr4/et3;

    iget-wide v1, p0, Lr4/z5;->o:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/et3;->a(J)V

    :cond_0
    return-void
.end method

.method public final i(J)V
    .locals 3

    invoke-virtual {p0}, Lr4/z5;->u()Z

    move-result v0

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-wide v0, p0, Lr4/z5;->o:J

    iget-object v2, p0, Lr4/z5;->a:Lr4/et3;

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lr4/et3;->c(J)Z

    return-void
.end method

.method public final j(FLr4/e8;)Lr4/cw3;
    .locals 3

    iget-object p1, p0, Lr4/z5;->j:Lr4/aw3;

    iget-object v0, p0, Lr4/z5;->i:[Lr4/h7;

    iget-object v1, p0, Lr4/z5;->m:Lr4/j44;

    iget-object v2, p0, Lr4/z5;->f:Lr4/a6;

    iget-object v2, v2, Lr4/a6;->a:Lr4/ft3;

    invoke-virtual {p1, v0, v1, v2, p2}, Lr4/aw3;->b([Lr4/h7;Lr4/j44;Lr4/ft3;Lr4/e8;)Lr4/cw3;

    move-result-object p1

    iget-object p2, p1, Lr4/cw3;->d:[Lr4/hv3;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final k(Lr4/cw3;JZ)J
    .locals 6

    const/4 p4, 0x2

    new-array v5, p4, [Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lr4/z5;->l(Lr4/cw3;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l(Lr4/cw3;JZ[Z)J
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v1, Lr4/cw3;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lr4/z5;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lr4/z5;->n:Lr4/cw3;

    invoke-virtual {p1, v6, v3}, Lr4/cw3;->b(Lr4/cw3;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Lr4/z5;->i:[Lr4/h7;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    aget-object v4, v4, v3

    invoke-interface {v4}, Lr4/h7;->G()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lr4/z5;->t()V

    iput-object v1, v0, Lr4/z5;->n:Lr4/cw3;

    invoke-virtual {p0}, Lr4/z5;->s()V

    iget-object v7, v0, Lr4/z5;->a:Lr4/et3;

    iget-object v8, v1, Lr4/cw3;->d:[Lr4/hv3;

    iget-object v9, v0, Lr4/z5;->h:[Z

    iget-object v10, v0, Lr4/z5;->c:[Lr4/vu3;

    move-object/from16 v11, p5

    move-wide/from16 v12, p2

    invoke-interface/range {v7 .. v13}, Lr4/et3;->d([Lr4/hv3;[Z[Lr4/vu3;[ZJ)J

    move-result-wide v3

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v0, Lr4/z5;->i:[Lr4/h7;

    if-ge v7, v6, :cond_3

    aget-object v8, v8, v7

    invoke-interface {v8}, Lr4/h7;->G()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iput-boolean v2, v0, Lr4/z5;->e:Z

    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, Lr4/z5;->c:[Lr4/vu3;

    if-ge v7, v6, :cond_6

    aget-object v8, v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {p1, v7}, Lr4/cw3;->a(I)Z

    move-result v8

    invoke-static {v8}, Lr4/ja;->d(Z)V

    iget-object v8, v0, Lr4/z5;->i:[Lr4/h7;

    aget-object v8, v8, v7

    invoke-interface {v8}, Lr4/h7;->G()I

    iput-boolean v5, v0, Lr4/z5;->e:Z

    goto :goto_6

    :cond_4
    iget-object v8, v1, Lr4/cw3;->d:[Lr4/hv3;

    aget-object v8, v8, v7

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Lr4/ja;->d(Z)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    return-wide v3
.end method

.method public final m()V
    .locals 3

    invoke-virtual {p0}, Lr4/z5;->t()V

    iget-object v0, p0, Lr4/z5;->k:Lr4/j6;

    iget-object v1, p0, Lr4/z5;->a:Lr4/et3;

    :try_start_0
    instance-of v2, v1, Lr4/ls3;

    if-eqz v2, :cond_0

    check-cast v1, Lr4/ls3;

    iget-object v1, v1, Lr4/ls3;->a:Lr4/et3;

    invoke-virtual {v0, v1}, Lr4/j6;->f(Lr4/et3;)V

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lr4/j6;->f(Lr4/et3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n(Lr4/z5;)V
    .locals 1

    iget-object v0, p0, Lr4/z5;->l:Lr4/z5;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lr4/z5;->t()V

    iput-object p1, p0, Lr4/z5;->l:Lr4/z5;

    invoke-virtual {p0}, Lr4/z5;->s()V

    return-void
.end method

.method public final o()Lr4/z5;
    .locals 1

    iget-object v0, p0, Lr4/z5;->l:Lr4/z5;

    return-object v0
.end method

.method public final p()Lr4/j44;
    .locals 1

    iget-object v0, p0, Lr4/z5;->m:Lr4/j44;

    return-object v0
.end method

.method public final q()Lr4/cw3;
    .locals 1

    iget-object v0, p0, Lr4/z5;->n:Lr4/cw3;

    return-object v0
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lr4/z5;->a:Lr4/et3;

    instance-of v1, v0, Lr4/ls3;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/z5;->f:Lr4/a6;

    iget-wide v1, v1, Lr4/a6;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Lr4/ls3;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lr4/ls3;->k(JJ)V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 3

    invoke-virtual {p0}, Lr4/z5;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/z5;->n:Lr4/cw3;

    iget v2, v1, Lr4/cw3;->a:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lr4/cw3;->a(I)Z

    iget-object v1, p0, Lr4/z5;->n:Lr4/cw3;

    iget-object v1, v1, Lr4/cw3;->d:[Lr4/hv3;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    invoke-virtual {p0}, Lr4/z5;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/z5;->n:Lr4/cw3;

    iget v2, v1, Lr4/cw3;->a:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lr4/cw3;->a(I)Z

    iget-object v1, p0, Lr4/z5;->n:Lr4/cw3;

    iget-object v1, v1, Lr4/cw3;->d:[Lr4/hv3;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lr4/z5;->l:Lr4/z5;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
