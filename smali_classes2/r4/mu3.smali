.class public final Lr4/mu3;
.super Lr4/so3;
.source "SourceFile"

# interfaces
.implements Lr4/du3;


# instance fields
.field public final g:Lr4/u5;

.field public final h:Lr4/t5;

.field public final i:Lr4/l7;

.field public final j:Lr4/wt3;

.field public final k:Lr4/ut2;

.field public final l:I

.field public m:Z

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Lr4/ho;

.field public final r:Lr4/ww3;


# direct methods
.method public synthetic constructor <init>(Lr4/u5;Lr4/l7;Lr4/wt3;Lr4/ut2;Lr4/ww3;ILr4/lu3;[B)V
    .locals 0

    invoke-direct {p0}, Lr4/so3;-><init>()V

    iget-object p7, p1, Lr4/u5;->b:Lr4/t5;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lr4/mu3;->h:Lr4/t5;

    iput-object p1, p0, Lr4/mu3;->g:Lr4/u5;

    iput-object p2, p0, Lr4/mu3;->i:Lr4/l7;

    iput-object p3, p0, Lr4/mu3;->j:Lr4/wt3;

    iput-object p4, p0, Lr4/mu3;->k:Lr4/ut2;

    iput-object p5, p0, Lr4/mu3;->r:Lr4/ww3;

    iput p6, p0, Lr4/mu3;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/mu3;->m:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr4/mu3;->n:J

    return-void
.end method


# virtual methods
.method public final b(Lr4/ft3;Lr4/qw3;J)Lr4/et3;
    .locals 15

    move-object v13, p0

    iget-object v0, v13, Lr4/mu3;->i:Lr4/l7;

    invoke-interface {v0}, Lr4/l7;->zza()Lr4/o8;

    move-result-object v2

    iget-object v0, v13, Lr4/mu3;->q:Lr4/ho;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Lr4/o8;->c(Lr4/ho;)V

    :cond_0
    new-instance v14, Lr4/hu3;

    iget-object v0, v13, Lr4/mu3;->h:Lr4/t5;

    iget-object v1, v0, Lr4/t5;->a:Landroid/net/Uri;

    iget-object v0, v13, Lr4/mu3;->j:Lr4/wt3;

    invoke-interface {v0}, Lr4/wt3;->zza()Lr4/xt3;

    move-result-object v3

    iget-object v4, v13, Lr4/mu3;->k:Lr4/ut2;

    invoke-virtual/range {p0 .. p1}, Lr4/so3;->w(Lr4/ft3;)Lr4/po2;

    move-result-object v5

    iget-object v6, v13, Lr4/mu3;->r:Lr4/ww3;

    invoke-virtual/range {p0 .. p1}, Lr4/so3;->s(Lr4/ft3;)Lr4/ot3;

    move-result-object v7

    iget-object v0, v13, Lr4/mu3;->h:Lr4/t5;

    iget-object v0, v0, Lr4/t5;->d:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v13, Lr4/mu3;->l:I

    const/4 v12, 0x0

    move-object v0, v14

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v12}, Lr4/hu3;-><init>(Landroid/net/Uri;Lr4/o8;Lr4/xt3;Lr4/ut2;Lr4/po2;Lr4/ww3;Lr4/ot3;Lr4/du3;Lr4/qw3;Ljava/lang/String;I[B)V

    return-object v14
.end method

.method public final h(Lr4/et3;)V
    .locals 0

    check-cast p1, Lr4/hu3;

    invoke-virtual {p1}, Lr4/hu3;->T()V

    return-void
.end method

.method public final i(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lr4/mu3;->n:J

    :cond_0
    iget-boolean v0, p0, Lr4/mu3;->m:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lr4/mu3;->n:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lr4/mu3;->o:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lr4/mu3;->p:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lr4/mu3;->n:J

    iput-boolean p3, p0, Lr4/mu3;->o:Z

    iput-boolean p4, p0, Lr4/mu3;->p:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/mu3;->m:Z

    invoke-virtual {p0}, Lr4/mu3;->z()V

    return-void
.end method

.method public final m(Lr4/ho;)V
    .locals 0

    iput-object p1, p0, Lr4/mu3;->q:Lr4/ho;

    invoke-virtual {p0}, Lr4/mu3;->z()V

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 0

    return-void
.end method

.method public final v()Lr4/u5;
    .locals 1

    iget-object v0, p0, Lr4/mu3;->g:Lr4/u5;

    return-object v0
.end method

.method public final z()V
    .locals 25

    move-object/from16 v0, p0

    new-instance v10, Lr4/zu3;

    iget-wide v8, v0, Lr4/mu3;->n:J

    iget-boolean v11, v0, Lr4/mu3;->o:Z

    iget-boolean v1, v0, Lr4/mu3;->p:Z

    iget-object v14, v0, Lr4/mu3;->g:Lr4/u5;

    if-eqz v1, :cond_0

    iget-object v1, v14, Lr4/u5;->c:Lr4/r5;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    invoke-direct/range {v1 .. v21}, Lr4/zu3;-><init>(JJJJJJJZZZLjava/lang/Object;Lr4/u5;Lr4/r5;)V

    iget-boolean v1, v0, Lr4/mu3;->m:Z

    if-eqz v1, :cond_1

    new-instance v10, Lr4/iu3;

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Lr4/iu3;-><init>(Lr4/mu3;Lr4/e8;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    :goto_1
    invoke-virtual {v0, v10}, Lr4/so3;->q(Lr4/e8;)V

    return-void
.end method
