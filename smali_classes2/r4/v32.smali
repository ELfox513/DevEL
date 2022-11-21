.class public final Lr4/v32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/q12<",
        "Lr4/xf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/rp1;

.field public final c:Lr4/vg1;

.field public final d:Lr4/hp2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lr4/im0;

.field public final g:Lr4/x50;

.field public final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/hp2;Ljava/util/concurrent/Executor;Lr4/vg1;Lr4/rp1;Lr4/x50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v32;->a:Landroid/content/Context;

    iput-object p3, p0, Lr4/v32;->d:Lr4/hp2;

    iput-object p5, p0, Lr4/v32;->c:Lr4/vg1;

    iput-object p4, p0, Lr4/v32;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr4/v32;->f:Lr4/im0;

    iput-object p6, p0, Lr4/v32;->b:Lr4/rp1;

    iput-object p7, p0, Lr4/v32;->g:Lr4/x50;

    sget-object p1, Lr4/rz;->o6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/v32;->h:Z

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
            "Lr4/xf1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/wp1;

    invoke-direct {v0}, Lr4/wp1;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v1

    new-instance v2, Lr4/q32;

    invoke-direct {v2, p0, p2, p1, v0}, Lr4/q32;-><init>(Lr4/v32;Lr4/no2;Lr4/bp2;Lr4/wp1;)V

    iget-object p1, p0, Lr4/v32;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    invoke-static {v0}, Lr4/r32;->a(Lr4/wp1;)Ljava/lang/Runnable;

    move-result-object p2

    iget-object v0, p0, Lr4/v32;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final synthetic c(Lr4/no2;Lr4/bp2;Lr4/wp1;Ljava/lang/Object;)Lr4/h83;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lr4/v32;->b:Lr4/rp1;

    iget-object v3, v0, Lr4/v32;->d:Lr4/hp2;

    iget-object v3, v3, Lr4/hp2;->e:Lr4/yt;

    iget-object v4, v1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v4, v4, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {v2, v3, v10, v4}, Lr4/rp1;->b(Lr4/yt;Lr4/no2;Lr4/so2;)Lr4/cs0;

    move-result-object v11

    iget-boolean v2, v10, Lr4/no2;->S:Z

    invoke-interface {v11, v2}, Lr4/cs0;->a0(Z)V

    iget-object v2, v0, Lr4/v32;->a:Landroid/content/Context;

    move-object v3, v11

    check-cast v3, Landroid/view/View;

    move-object/from16 v4, p3

    invoke-virtual {v4, v2, v3}, Lr4/wp1;->a(Landroid/content/Context;Landroid/view/View;)V

    new-instance v12, Lr4/vm0;

    invoke-direct {v12}, Lr4/vm0;-><init>()V

    iget-object v13, v0, Lr4/v32;->c:Lr4/vg1;

    new-instance v14, Lr4/x31;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v10, v15}, Lr4/x31;-><init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V

    new-instance v9, Lr4/bg1;

    new-instance v8, Lr4/u32;

    iget-object v2, v0, Lr4/v32;->a:Landroid/content/Context;

    iget-object v3, v0, Lr4/v32;->f:Lr4/im0;

    iget-object v7, v0, Lr4/v32;->d:Lr4/hp2;

    iget-boolean v6, v0, Lr4/v32;->h:Z

    iget-object v5, v0, Lr4/v32;->g:Lr4/x50;

    move-object v1, v8

    move-object v4, v12

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    move/from16 v17, v6

    move-object v6, v11

    move-object v15, v8

    move/from16 v8, v17

    move-object v10, v9

    move-object/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lr4/u32;-><init>(Landroid/content/Context;Lr4/im0;Lr4/h83;Lr4/no2;Lr4/cs0;Lr4/hp2;ZLr4/x50;)V

    invoke-direct {v10, v15, v11}, Lr4/bg1;-><init>(Lr4/dh1;Lr4/cs0;)V

    invoke-virtual {v13, v14, v10}, Lr4/vg1;->c(Lr4/x31;Lr4/bg1;)Lr4/yf1;

    move-result-object v1

    invoke-virtual {v12, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lr4/yf1;->d()Lr4/b81;

    move-result-object v2

    new-instance v3, Lr4/s32;

    invoke-direct {v3, v11}, Lr4/s32;-><init>(Lr4/cs0;)V

    sget-object v4, Lr4/qm0;->f:Lr4/i83;

    invoke-virtual {v2, v3, v4}, Lr4/yc1;->K0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1}, Lr4/yf1;->k()Lr4/qp1;

    move-result-object v2

    iget-boolean v3, v0, Lr4/v32;->h:Z

    if-eqz v3, :cond_0

    iget-object v15, v0, Lr4/v32;->g:Lr4/x50;

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3, v15}, Lr4/qp1;->i(Lr4/cs0;ZLr4/x50;)V

    invoke-virtual {v1}, Lr4/yf1;->k()Lr4/qp1;

    move-object/from16 v2, p1

    iget-object v3, v2, Lr4/no2;->s:Lr4/uo2;

    iget-object v4, v3, Lr4/uo2;->b:Ljava/lang/String;

    iget-object v3, v3, Lr4/uo2;->a:Ljava/lang/String;

    invoke-static {v11, v4, v3}, Lr4/qp1;->j(Lr4/cs0;Ljava/lang/String;Ljava/lang/String;)Lr4/h83;

    move-result-object v3

    new-instance v4, Lr4/t32;

    invoke-direct {v4, v0, v11, v2, v1}, Lr4/t32;-><init>(Lr4/v32;Lr4/cs0;Lr4/no2;Lr4/yf1;)V

    iget-object v1, v0, Lr4/v32;->e:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4, v1}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v1

    return-object v1
.end method
