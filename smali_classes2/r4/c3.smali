.class public abstract Lr4/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/g7;
.implements Lr4/h7;


# instance fields
.field public final a:I

.field public final b:Lr4/f5;

.field public d:Lr4/i7;

.field public k:I

.field public p:I

.field public q:Lr4/vu3;

.field public r:[Lr4/e5;

.field public s:J

.field public t:J

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/c3;->a:I

    new-instance p1, Lr4/f5;

    invoke-direct {p1}, Lr4/f5;-><init>()V

    iput-object p1, p0, Lr4/c3;->b:Lr4/f5;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lr4/c3;->t:J

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    iget v0, p0, Lr4/c3;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput v1, p0, Lr4/c3;->p:I

    invoke-virtual {p0}, Lr4/c3;->q()V

    return-void
.end method

.method public final E()V
    .locals 2

    iget v0, p0, Lr4/c3;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lr4/ja;->d(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lr4/c3;->p:I

    invoke-virtual {p0}, Lr4/c3;->p()V

    return-void
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lr4/c3;->u:Z

    return v0
.end method

.method public final F0()I
    .locals 1

    iget v0, p0, Lr4/c3;->p:I

    return v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lr4/c3;->a:I

    return v0
.end method

.method public final H()Z
    .locals 5

    iget-wide v0, p0, Lr4/c3;->t:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public J()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final R()V
    .locals 2

    iget v0, p0, Lr4/c3;->p:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-object v0, p0, Lr4/c3;->b:Lr4/f5;

    const/4 v1, 0x0

    iput-object v1, v0, Lr4/f5;->b:Lr4/vu2;

    iput-object v1, v0, Lr4/f5;->a:Lr4/e5;

    invoke-virtual {p0}, Lr4/c3;->s()V

    return-void
.end method

.method public final S([Lr4/e5;Lr4/vu3;JJ)V
    .locals 6

    iget-boolean v0, p0, Lr4/c3;->u:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/ja;->d(Z)V

    iput-object p2, p0, Lr4/c3;->q:Lr4/vu3;

    iget-wide v0, p0, Lr4/c3;->t:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lr4/c3;->t:J

    :cond_0
    iput-object p1, p0, Lr4/c3;->r:[Lr4/e5;

    iput-wide p5, p0, Lr4/c3;->s:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lr4/c3;->e([Lr4/e5;JJ)V

    return-void
.end method

.method public final T(I)V
    .locals 0

    iput p1, p0, Lr4/c3;->k:I

    return-void
.end method

.method public final V(Lr4/i7;[Lr4/e5;Lr4/vu3;JZZJJ)V
    .locals 9

    move-object v7, p0

    move v8, p6

    iget v0, v7, Lr4/c3;->p:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->d(Z)V

    move-object v0, p1

    iput-object v0, v7, Lr4/c3;->d:Lr4/i7;

    iput v1, v7, Lr4/c3;->p:I

    move/from16 v0, p7

    invoke-virtual {p0, p6, v0}, Lr4/c3;->n(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lr4/c3;->S([Lr4/e5;Lr4/vu3;JJ)V

    move-wide v0, p4

    invoke-virtual {p0, p4, p5, p6}, Lr4/c3;->o(JZ)V

    return-void
.end method

.method public final W()J
    .locals 2

    iget-wide v0, p0, Lr4/c3;->t:J

    return-wide v0
.end method

.method public final X()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/c3;->u:Z

    return-void
.end method

.method public final Y()Lr4/h7;
    .locals 0

    return-object p0
.end method

.method public final Z()Lr4/vu3;
    .locals 1

    iget-object v0, p0, Lr4/c3;->q:Lr4/vu3;

    return-object v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a0(FF)V
    .locals 0

    return-void
.end method

.method public final b0()V
    .locals 3

    iget v0, p0, Lr4/c3;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lr4/ja;->d(Z)V

    iget-object v0, p0, Lr4/c3;->b:Lr4/f5;

    const/4 v1, 0x0

    iput-object v1, v0, Lr4/f5;->b:Lr4/vu2;

    iput-object v1, v0, Lr4/f5;->a:Lr4/e5;

    iput v2, p0, Lr4/c3;->p:I

    iput-object v1, p0, Lr4/c3;->q:Lr4/vu3;

    iput-object v1, p0, Lr4/c3;->r:[Lr4/e5;

    iput-boolean v2, p0, Lr4/c3;->u:Z

    invoke-virtual {p0}, Lr4/c3;->r()V

    return-void
.end method

.method public final c0(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/c3;->u:Z

    iput-wide p1, p0, Lr4/c3;->t:J

    invoke-virtual {p0, p1, p2, v0}, Lr4/c3;->o(JZ)V

    return-void
.end method

.method public abstract e([Lr4/e5;JJ)V
.end method

.method public final f()Lr4/f5;
    .locals 2

    iget-object v0, p0, Lr4/c3;->b:Lr4/f5;

    const/4 v1, 0x0

    iput-object v1, v0, Lr4/f5;->b:Lr4/vu2;

    iput-object v1, v0, Lr4/f5;->a:Lr4/e5;

    return-object v0
.end method

.method public final g()[Lr4/e5;
    .locals 1

    iget-object v0, p0, Lr4/c3;->r:[Lr4/e5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final h()Lr4/i7;
    .locals 1

    iget-object v0, p0, Lr4/c3;->d:Lr4/i7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final i(Ljava/lang/Throwable;Lr4/e5;ZI)Lr4/o3;
    .locals 9

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lr4/c3;->v:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/c3;->v:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lr4/h7;->d(Lr4/e5;)I

    move-result v0
    :try_end_0
    .catch Lr4/o3; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lr4/c3;->v:Z

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lr4/c3;->v:Z

    throw p1

    :catch_0
    iput-boolean v1, p0, Lr4/c3;->v:Z

    :cond_0
    const/4 v6, 0x4

    :goto_0
    invoke-interface {p0}, Lr4/g7;->b()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lr4/c3;->k:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lr4/o3;->b(Ljava/lang/Throwable;Ljava/lang/String;ILr4/e5;IZI)Lr4/o3;

    move-result-object p1

    return-object p1
.end method

.method public j()Lr4/gb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k(Lr4/f5;Lr4/i4;I)I
    .locals 6

    iget-object v0, p0, Lr4/c3;->q:Lr4/vu3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lr4/vu3;->d(Lr4/f5;Lr4/i4;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lr4/qb4;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lr4/c3;->t:J

    iget-boolean p1, p0, Lr4/c3;->u:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lr4/i4;->e:J

    iget-wide v2, p0, Lr4/c3;->s:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lr4/i4;->e:J

    iget-wide p1, p0, Lr4/c3;->t:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lr4/c3;->t:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lr4/f5;->a:Lr4/e5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Lr4/e5;->p:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    new-instance p3, Lr4/c5;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lr4/c5;-><init>(Lr4/e5;Lr4/d5;)V

    iget-wide v2, v0, Lr4/e5;->p:J

    iget-wide v4, p0, Lr4/c3;->s:J

    add-long/2addr v2, v4

    invoke-virtual {p3, v2, v3}, Lr4/c5;->r(J)Lr4/c5;

    new-instance v0, Lr4/e5;

    invoke-direct {v0, p3, v1}, Lr4/e5;-><init>(Lr4/c5;Lr4/d5;)V

    iput-object v0, p1, Lr4/f5;->a:Lr4/e5;

    return p2

    :cond_3
    :goto_0
    return p3
.end method

.method public final l(J)I
    .locals 3

    iget-object v0, p0, Lr4/c3;->q:Lr4/vu3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lr4/c3;->s:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/vu3;->c(J)I

    move-result p1

    return p1
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Lr4/c3;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/c3;->u:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/c3;->q:Lr4/vu3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lr4/vu3;->a()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public n(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract o(JZ)V
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public abstract r()V
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lr4/c3;->q:Lr4/vu3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lr4/vu3;->b()V

    return-void
.end method
