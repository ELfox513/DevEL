.class public abstract Lr4/rc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nd;
.implements Lr4/od;


# instance fields
.field public final a:I

.field public b:Lr4/pd;

.field public c:I

.field public d:I

.field public e:Lr4/hj;

.field public f:J

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/rc;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/rc;->g:Z

    return-void
.end method


# virtual methods
.method public abstract A()V
.end method

.method public abstract B()V
.end method

.method public final C()Lr4/pd;
    .locals 1

    iget-object v0, p0, Lr4/rc;->b:Lr4/pd;

    return-object v0
.end method

.method public final D(I)V
    .locals 0

    iput p1, p0, Lr4/rc;->c:I

    return-void
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lr4/rc;->c:I

    return v0
.end method

.method public final a()Lr4/od;
    .locals 0

    return-object p0
.end method

.method public final b(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/rc;->h:Z

    iput-boolean v0, p0, Lr4/rc;->g:Z

    invoke-virtual {p0, p1, p2, v0}, Lr4/rc;->y(JZ)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lr4/rc;->d:I

    return v0
.end method

.method public final d(Lr4/pd;[Lr4/id;Lr4/hj;JZJ)V
    .locals 2

    iget v0, p0, Lr4/rc;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/vk;->d(Z)V

    iput-object p1, p0, Lr4/rc;->b:Lr4/pd;

    iput v1, p0, Lr4/rc;->d:I

    invoke-virtual {p0, p6}, Lr4/rc;->w(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lr4/rc;->s([Lr4/id;Lr4/hj;J)V

    invoke-virtual {p0, p4, p5, p6}, Lr4/rc;->y(JZ)V

    return-void
.end method

.method public e()Lr4/zk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget v0, p0, Lr4/rc;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lr4/vk;->d(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lr4/rc;->d:I

    invoke-virtual {p0}, Lr4/rc;->z()V

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lr4/rc;->g:Z

    return v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/rc;->h:Z

    return-void
.end method

.method public final j()Lr4/hj;
    .locals 1

    iget-object v0, p0, Lr4/rc;->e:Lr4/hj;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lr4/rc;->h:Z

    return v0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lr4/rc;->e:Lr4/hj;

    invoke-interface {v0}, Lr4/hj;->b()V

    return-void
.end method

.method public final o()V
    .locals 3

    iget v0, p0, Lr4/rc;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lr4/vk;->d(Z)V

    iput v2, p0, Lr4/rc;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/rc;->e:Lr4/hj;

    iput-boolean v2, p0, Lr4/rc;->h:Z

    invoke-virtual {p0}, Lr4/rc;->B()V

    return-void
.end method

.method public final q()V
    .locals 3

    iget v0, p0, Lr4/rc;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/vk;->d(Z)V

    iput v1, p0, Lr4/rc;->d:I

    invoke-virtual {p0}, Lr4/rc;->A()V

    return-void
.end method

.method public final s([Lr4/id;Lr4/hj;J)V
    .locals 1

    iget-boolean v0, p0, Lr4/rc;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr4/vk;->d(Z)V

    iput-object p2, p0, Lr4/rc;->e:Lr4/hj;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lr4/rc;->g:Z

    iput-wide p3, p0, Lr4/rc;->f:J

    invoke-virtual {p0, p1, p3, p4}, Lr4/rc;->x([Lr4/id;J)V

    return-void
.end method

.method public final t(Lr4/jd;Lr4/hf;Z)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lr4/rc;->e:Lr4/hj;

    move/from16 v4, p3

    invoke-interface {v3, v1, v2, v4}, Lr4/hj;->d(Lr4/jd;Lr4/hf;Z)I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lr4/cf;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr4/rc;->g:Z

    iget-boolean v1, v0, Lr4/rc;->h:Z

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const/4 v1, -0x3

    return v1

    :cond_1
    iget-wide v4, v2, Lr4/hf;->d:J

    iget-wide v6, v0, Lr4/rc;->f:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lr4/hf;->d:J

    goto/16 :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne v3, v2, :cond_3

    iget-object v4, v1, Lr4/jd;->a:Lr4/id;

    iget-wide v5, v4, Lr4/id;->H:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    iget-wide v7, v0, Lr4/rc;->f:J

    new-instance v3, Lr4/id;

    move-object v9, v3

    iget-object v10, v4, Lr4/id;->a:Ljava/lang/String;

    iget-object v11, v4, Lr4/id;->p:Ljava/lang/String;

    iget-object v12, v4, Lr4/id;->q:Ljava/lang/String;

    iget-object v13, v4, Lr4/id;->d:Ljava/lang/String;

    iget v14, v4, Lr4/id;->b:I

    iget v15, v4, Lr4/id;->r:I

    iget v2, v4, Lr4/id;->u:I

    move/from16 v16, v2

    iget v2, v4, Lr4/id;->v:I

    move/from16 v17, v2

    iget v2, v4, Lr4/id;->w:F

    move/from16 v18, v2

    iget v2, v4, Lr4/id;->x:I

    move/from16 v19, v2

    iget v2, v4, Lr4/id;->y:F

    move/from16 v20, v2

    iget-object v2, v4, Lr4/id;->A:[B

    move-object/from16 v21, v2

    iget v2, v4, Lr4/id;->z:I

    move/from16 v22, v2

    iget-object v2, v4, Lr4/id;->B:Lr4/ol;

    move-object/from16 v23, v2

    iget v2, v4, Lr4/id;->C:I

    move/from16 v24, v2

    iget v2, v4, Lr4/id;->D:I

    move/from16 v25, v2

    iget v2, v4, Lr4/id;->E:I

    move/from16 v26, v2

    iget v2, v4, Lr4/id;->F:I

    move/from16 v27, v2

    iget v2, v4, Lr4/id;->G:I

    move/from16 v28, v2

    iget v2, v4, Lr4/id;->I:I

    move/from16 v29, v2

    iget-object v2, v4, Lr4/id;->J:Ljava/lang/String;

    move-object/from16 v30, v2

    iget v2, v4, Lr4/id;->K:I

    move/from16 v31, v2

    add-long v32, v5, v7

    iget-object v2, v4, Lr4/id;->s:Ljava/util/List;

    move-object/from16 v34, v2

    iget-object v2, v4, Lr4/id;->t:Lr4/lf;

    move-object/from16 v35, v2

    iget-object v2, v4, Lr4/id;->k:Lr4/yh;

    move-object/from16 v36, v2

    invoke-direct/range {v9 .. v36}, Lr4/id;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILr4/ol;IIIIIILjava/lang/String;IJLjava/util/List;Lr4/lf;Lr4/yh;)V

    iput-object v3, v1, Lr4/jd;->a:Lr4/id;

    const/4 v1, -0x5

    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public final u(J)V
    .locals 3

    iget-object v0, p0, Lr4/rc;->e:Lr4/hj;

    iget-wide v1, p0, Lr4/rc;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/hj;->c(J)V

    return-void
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lr4/rc;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/rc;->h:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/rc;->e:Lr4/hj;

    invoke-interface {v0}, Lr4/hj;->a()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public abstract w(Z)V
.end method

.method public x([Lr4/id;J)V
    .locals 0

    return-void
.end method

.method public abstract y(JZ)V
.end method

.method public abstract z()V
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/rc;->a:I

    return v0
.end method
