.class public Lr4/rz3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/lz3;

.field public final b:Lr4/qz3;

.field public c:Lr4/nz3;

.field public final d:I


# direct methods
.method public constructor <init>(Lr4/oz3;Lr4/qz3;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lr4/rz3;->b:Lr4/qz3;

    move/from16 v1, p15

    iput v1, v0, Lr4/rz3;->d:I

    new-instance v15, Lr4/lz3;

    const-wide/16 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lr4/lz3;-><init>(Lr4/oz3;JJJJJJ)V

    iput-object v15, v0, Lr4/rz3;->a:Lr4/lz3;

    return-void
.end method

.method public static final f(Lr4/b04;JLr4/w04;)I
    .locals 2

    invoke-interface {p0}, Lr4/b04;->p()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lr4/w04;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method public static final g(Lr4/b04;J)Z
    .locals 4

    invoke-interface {p0}, Lr4/b04;->p()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/32 v1, 0x40000

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    check-cast p0, Lr4/vz3;

    long-to-int p2, p1

    invoke-virtual {p0, p2, v0}, Lr4/vz3;->n(IZ)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()Lr4/z04;
    .locals 1

    iget-object v0, p0, Lr4/rz3;->a:Lr4/lz3;

    return-object v0
.end method

.method public final b(J)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lr4/rz3;->c:Lr4/nz3;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lr4/nz3;->e(Lr4/nz3;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v14, Lr4/nz3;

    iget-object v1, v0, Lr4/rz3;->a:Lr4/lz3;

    invoke-virtual {v1, v2, v3}, Lr4/lz3;->j(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iget-object v1, v0, Lr4/rz3;->a:Lr4/lz3;

    invoke-static {v1}, Lr4/lz3;->e(Lr4/lz3;)J

    move-result-wide v8

    iget-object v1, v0, Lr4/rz3;->a:Lr4/lz3;

    invoke-static {v1}, Lr4/lz3;->f(Lr4/lz3;)J

    move-result-wide v10

    iget-object v1, v0, Lr4/rz3;->a:Lr4/lz3;

    invoke-static {v1}, Lr4/lz3;->h(Lr4/lz3;)J

    move-result-wide v12

    iget-object v1, v0, Lr4/rz3;->a:Lr4/lz3;

    invoke-static {v1}, Lr4/lz3;->i(Lr4/lz3;)J

    move-result-wide v15

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v17, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Lr4/nz3;-><init>(JJJJJJJ)V

    move-object/from16 v1, v17

    iput-object v1, v0, Lr4/rz3;->c:Lr4/nz3;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lr4/rz3;->c:Lr4/nz3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lr4/b04;Lr4/w04;)I
    .locals 11

    :goto_0
    iget-object v0, p0, Lr4/rz3;->c:Lr4/nz3;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lr4/nz3;->b(Lr4/nz3;)J

    move-result-wide v1

    invoke-static {v0}, Lr4/nz3;->c(Lr4/nz3;)J

    move-result-wide v3

    invoke-static {v0}, Lr4/nz3;->h(Lr4/nz3;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Lr4/rz3;->d:I

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v3, v7

    if-gtz v10, :cond_0

    invoke-virtual {p0, v9, v1, v2}, Lr4/rz3;->e(ZJ)V

    invoke-static {p1, v1, v2, p2}, Lr4/rz3;->f(Lr4/b04;JLr4/w04;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, v5, v6}, Lr4/rz3;->g(Lr4/b04;J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v5, v6, p2}, Lr4/rz3;->f(Lr4/b04;JLr4/w04;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lr4/b04;->k()V

    iget-object v1, p0, Lr4/rz3;->b:Lr4/qz3;

    invoke-static {v0}, Lr4/nz3;->d(Lr4/nz3;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lr4/qz3;->b(Lr4/b04;J)Lr4/pz3;

    move-result-object v1

    invoke-static {v1}, Lr4/pz3;->a(Lr4/pz3;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_4

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Lr4/pz3;->c(Lr4/pz3;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lr4/rz3;->g(Lr4/b04;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lr4/pz3;->c(Lr4/pz3;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lr4/rz3;->e(ZJ)V

    invoke-static {v1}, Lr4/pz3;->c(Lr4/pz3;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lr4/rz3;->f(Lr4/b04;JLr4/w04;)I

    move-result p1

    return p1

    :cond_2
    invoke-static {v1}, Lr4/pz3;->b(Lr4/pz3;)J

    move-result-wide v2

    invoke-static {v1}, Lr4/pz3;->c(Lr4/pz3;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lr4/nz3;->g(Lr4/nz3;JJ)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lr4/pz3;->b(Lr4/pz3;)J

    move-result-wide v2

    invoke-static {v1}, Lr4/pz3;->c(Lr4/pz3;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lr4/nz3;->f(Lr4/nz3;JJ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v9, v5, v6}, Lr4/rz3;->e(ZJ)V

    invoke-static {p1, v5, v6, p2}, Lr4/rz3;->f(Lr4/b04;JLr4/w04;)I

    move-result p1

    return p1
.end method

.method public final e(ZJ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/rz3;->c:Lr4/nz3;

    iget-object p1, p0, Lr4/rz3;->b:Lr4/qz3;

    invoke-interface {p1}, Lr4/qz3;->a()V

    return-void
.end method
