.class public final Lr4/f62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/uo1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/rp1;

.field public final c:Lr4/ap1;

.field public final d:Lr4/hp2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lr4/im0;

.field public final g:Lr4/x50;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/hp2;Ljava/util/concurrent/Executor;Lr4/ap1;Lr4/rp1;Lr4/x50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f62;->a:Landroid/content/Context;

    iput-object p3, p0, Lr4/f62;->d:Lr4/hp2;

    iput-object p5, p0, Lr4/f62;->c:Lr4/ap1;

    iput-object p4, p0, Lr4/f62;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/f62;->f:Lr4/im0;

    iput-object p6, p0, Lr4/f62;->b:Lr4/rp1;

    iput-object p7, p0, Lr4/f62;->g:Lr4/x50;

    sget-object p1, Lr4/rz;->o6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/f62;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lr4/bp2;Lr4/no2;)Z
    .locals 0

    iget-object p1, p2, Lr4/no2;->s:Lr4/uo2;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lr4/uo2;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/bp2;Lr4/no2;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bp2;",
            "Lr4/no2;",
            ")",
            "Lr4/h83<",
            "Lr4/uo1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/wp1;

    invoke-direct {v0}, Lr4/wp1;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v1

    new-instance v2, Lr4/y52;

    invoke-direct {v2, p0, p2, p1, v0}, Lr4/y52;-><init>(Lr4/f62;Lr4/no2;Lr4/bp2;Lr4/wp1;)V

    iget-object p1, p0, Lr4/f62;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    invoke-static {v0}, Lr4/z52;->a(Lr4/wp1;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lr4/f62;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final synthetic c(Lr4/no2;Lr4/bp2;Lr4/wp1;Ljava/lang/Object;)Lr4/h83;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lr4/f62;->b:Lr4/rp1;

    iget-object v3, v0, Lr4/f62;->d:Lr4/hp2;

    iget-object v3, v3, Lr4/hp2;->e:Lr4/yt;

    iget-object v4, v1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v4, v4, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v2, v3, v11, v4}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v12

    iget-boolean v2, v11, Lr4/no2;->S:Z

    invoke-interface {v12, v2}, Lr4/cs0;->a0(Z)V

    iget-object v2, v0, Lr4/f62;->a:Landroid/content/Context;

    move-object v3, v12

    check-cast v3, Landroid/view/View;

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lr4/wp1;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance v13, Lr4/vm0;

    invoke-direct {v13}, Lr4/vm0;-><init>()V

    iget-object v14, v0, Lr4/f62;->c:Lr4/ap1;

    new-instance v15, Lr4/x31;

    const/4 v10, 0x0

    invoke-direct {v15, v1, v11, v10}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance v9, Lr4/wo1;

    new-instance v8, Lr4/e62;

    iget-object v2, v0, Lr4/f62;->a:Landroid/content/Context;

    iget-object v3, v0, Lr4/f62;->b:Lr4/rp1;

    iget-object v4, v0, Lr4/f62;->d:Lr4/hp2;

    iget-object v5, v0, Lr4/f62;->f:Lr4/im0;

    iget-object v7, v0, Lr4/f62;->g:Lr4/x50;

    iget-boolean v6, v0, Lr4/f62;->h:Z

    move-object v1, v8

    move/from16 v16, v6

    move-object/from16 v6, p1

    move-object/from16 v17, v7

    move-object v7, v13

    move-object v11, v8

    move-object v8, v12

    move-object v0, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lr4/e62;-><init>(Landroid/content/Context;Lr4/rp1;Lr4/hp2;Lr4/im0;Lr4/no2;Lr4/h83;Lr4/cs0;Lr4/x50;Z)V

    invoke-direct {v0, v11, v12}, Lr4/wo1;-><init>(Lr4/dh1;Lr4/cs0;)V

    invoke-virtual {v14, v15, v0}, Lr4/ap1;->b(Lr4/x31;Lr4/wo1;)Lr4/vo1;

    move-result-object v0

    invoke-virtual {v13, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lr4/vo1;->k()Lr4/lf1;

    move-result-object v1

    invoke-static {v12, v1}, Lr4/l60;->b(Lr4/cs0;Lr4/k60;)V

    invoke-virtual {v0}, Lr4/j31;->d()Lr4/b81;

    move-result-object v1

    new-instance v2, Lr4/a62;

    invoke-direct {v2, v12}, Lr4/a62;-><init>(Lr4/cs0;)V

    sget-object v3, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {v1, v2, v3}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lr4/vo1;->l()Lr4/qp1;

    move-result-object v1

    move-object/from16 v2, p0

    iget-boolean v3, v2, Lr4/f62;->h:Z

    if-eqz v3, :cond_0

    iget-object v10, v2, Lr4/f62;->g:Lr4/x50;

    goto :goto_0

    :cond_0
    move-object/from16 v10, v17

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v12, v3, v10}, Lr4/qp1;->i(Lr4/cs0;ZLr4/x50;)V

    invoke-virtual {v0}, Lr4/vo1;->l()Lr4/qp1;

    move-object/from16 v1, p1

    iget-object v3, v1, Lr4/no2;->s:Lr4/uo2;

    iget-object v4, v3, Lr4/uo2;->b:Ljava/lang/String;

    iget-object v3, v3, Lr4/uo2;->a:Ljava/lang/String;

    invoke-static {v12, v4, v3}, Lr4/qp1;->j(Lr4/cs0;Ljava/lang/String;Ljava/lang/String;)Lr4/h83;

    move-result-object v3

    new-instance v4, Lr4/b62;

    invoke-direct {v4, v2, v12, v1, v0}, Lr4/b62;-><init>(Lr4/f62;Lr4/cs0;Lr4/no2;Lr4/vo1;)V

    iget-object v0, v2, Lr4/f62;->e:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v0}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
