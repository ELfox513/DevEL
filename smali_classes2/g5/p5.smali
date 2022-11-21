.class public final Lg5/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lg5/u;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lg5/u5;


# direct methods
.method public constructor <init>(Lg5/u5;Lg5/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/p5;->c:Lg5/u5;

    iput-object p2, p0, Lg5/p5;->a:Lg5/u;

    iput-object p3, p0, Lg5/p5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string v0, "_r"

    iget-object v2, v1, Lg5/p5;->c:Lg5/u5;

    invoke-static {v2}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v2

    invoke-virtual {v2}, Lg5/ba;->a()V

    iget-object v2, v1, Lg5/p5;->c:Lg5/u5;

    invoke-static {v2}, Lg5/u5;->b2(Lg5/u5;)Lg5/ba;

    move-result-object v2

    invoke-virtual {v2}, Lg5/ba;->c0()Lg5/n7;

    move-result-object v2

    iget-object v3, v1, Lg5/p5;->a:Lg5/u;

    iget-object v13, v1, Lg5/p5;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-static {}, Lg5/b5;->o()V

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->u()Lg5/g;

    move-result-object v4

    sget-object v5, Lg5/c3;->W:Lg5/b3;

    invoke-virtual {v4, v13, v5}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v4

    const/4 v14, 0x0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v0, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v13}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_a

    :cond_0
    iget-object v4, v3, Lg5/u;->a:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lg5/u;->a:Ljava/lang/String;

    const-string v6, "_iapx"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    iget-object v2, v3, Lg5/u;->a:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    invoke-virtual {v0, v3, v13, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    invoke-static {}, Lb5/r4;->s()Lb5/q4;

    move-result-object v6

    iget-object v4, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v4}, Lg5/ba;->V()Lg5/k;

    move-result-object v4

    invoke-virtual {v4}, Lg5/k;->g0()V

    :try_start_0
    iget-object v4, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v4}, Lg5/ba;->V()Lg5/k;

    move-result-object v4

    invoke-virtual {v4, v13}, Lg5/k;->T(Ljava/lang/String;)Lg5/g5;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v13}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lg5/q9;->b:Lg5/ba;

    :goto_0
    invoke-virtual {v0}, Lg5/ba;->V()Lg5/k;

    move-result-object v0

    invoke-virtual {v0}, Lg5/k;->i0()V

    goto/16 :goto_a

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lg5/g5;->K()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v13}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lg5/q9;->b:Lg5/ba;

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, Lb5/t4;->J1()Lb5/s4;

    move-result-object v15

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Lb5/s4;->b0(I)Lb5/s4;

    const-string v7, "android"

    invoke-virtual {v15, v7}, Lb5/s4;->W(Ljava/lang/String;)Lb5/s4;

    invoke-virtual {v4}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lb5/s4;->t(Ljava/lang/String;)Lb5/s4;

    :cond_4
    invoke-virtual {v4}, Lg5/g5;->g0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v4}, Lg5/g5;->g0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lb5/s4;->v(Ljava/lang/String;)Lb5/s4;

    :cond_5
    invoke-virtual {v4}, Lg5/g5;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lg5/g5;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lb5/s4;->x(Ljava/lang/String;)Lb5/s4;

    :cond_6
    invoke-virtual {v4}, Lg5/g5;->M()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v12, v7, v9

    if-eqz v12, :cond_7

    invoke-virtual {v4}, Lg5/g5;->M()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v15, v8}, Lb5/s4;->z(I)Lb5/s4;

    :cond_7
    invoke-virtual {v4}, Lg5/g5;->X()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lb5/s4;->S(J)Lb5/s4;

    invoke-virtual {v4}, Lg5/g5;->V()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lb5/s4;->I(J)Lb5/s4;

    invoke-virtual {v4}, Lg5/g5;->k0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lg5/g5;->c0()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lb5/ud;->b()Z

    iget-object v9, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->u()Lg5/g;

    move-result-object v9

    invoke-virtual {v4}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lg5/c3;->f0:Lg5/b3;

    invoke-virtual {v9, v10, v12}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v4}, Lg5/g5;->j0()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v15, v7}, Lb5/s4;->Q(Ljava/lang/String;)Lb5/s4;

    goto :goto_1

    :cond_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v15, v9}, Lb5/s4;->P(Ljava/lang/String;)Lb5/s4;

    goto :goto_1

    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v15, v8}, Lb5/s4;->T0(Ljava/lang/String;)Lb5/s4;

    goto :goto_1

    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v15, v7}, Lb5/s4;->Q(Ljava/lang/String;)Lb5/s4;

    goto :goto_1

    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v15, v8}, Lb5/s4;->T0(Ljava/lang/String;)Lb5/s4;

    :cond_c
    :goto_1
    iget-object v7, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v7, v13}, Lg5/ba;->U(Ljava/lang/String;)Lg5/h;

    move-result-object v7

    invoke-virtual {v4}, Lg5/g5;->U()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lb5/s4;->E(J)Lb5/s4;

    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->j()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->u()Lg5/g;

    move-result-object v8

    invoke-virtual {v15}, Lb5/s4;->n0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lg5/g;->x(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Lg5/h;->j()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v15, v14}, Lb5/s4;->G(Ljava/lang/String;)Lb5/s4;

    :cond_d
    invoke-virtual {v7}, Lg5/h;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lb5/s4;->D(Ljava/lang/String;)Lb5/s4;

    invoke-virtual {v7}, Lg5/h;->j()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v8}, Lg5/ba;->d0()Lg5/x8;

    move-result-object v8

    invoke-virtual {v4}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lg5/x8;->i(Ljava/lang/String;Lg5/h;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v4}, Lg5/g5;->J()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_e

    :try_start_3
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-wide v11, v3, Lg5/u;->k:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lg5/n7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lb5/s4;->c0(Ljava/lang/String;)Lb5/s4;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_e

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lb5/s4;->U(Z)Lb5/s4;

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->l()Lg5/o3;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v2, Lg5/q9;->b:Lg5/ba;

    goto/16 :goto_0

    :cond_e
    :goto_2
    :try_start_5
    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->v()Lg5/o;

    move-result-object v8

    invoke-virtual {v8}, Lg5/w5;->f()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lb5/s4;->F(Ljava/lang/String;)Lb5/s4;

    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->v()Lg5/o;

    move-result-object v8

    invoke-virtual {v8}, Lg5/w5;->f()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lb5/s4;->V(Ljava/lang/String;)Lb5/s4;

    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->v()Lg5/o;

    move-result-object v8

    invoke-virtual {v8}, Lg5/o;->k()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v15, v9}, Lb5/s4;->g0(I)Lb5/s4;

    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->v()Lg5/o;

    move-result-object v8

    invoke-virtual {v8}, Lg5/o;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lb5/s4;->l0(Ljava/lang/String;)Lb5/s4;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v7}, Lg5/h;->k()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v4}, Lg5/g5;->f0()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v4}, Lg5/g5;->f0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Lg5/u;->k:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lg5/n7;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lb5/s4;->u(Ljava/lang/String;)Lb5/s4;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    :try_start_7
    invoke-virtual {v4}, Lg5/g5;->i0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v4}, Lg5/g5;->i0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lb5/s4;->L(Ljava/lang/String;)Lb5/s4;

    :cond_10
    invoke-virtual {v4}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v8}, Lg5/ba;->V()Lg5/k;

    move-result-object v8

    invoke-virtual {v8, v7}, Lg5/k;->e0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg5/ga;

    const-string v11, "_lte"

    iget-object v12, v10, Lg5/ga;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_3

    :cond_12
    move-object v10, v14

    :goto_3
    const-wide/16 v24, 0x0

    if-eqz v10, :cond_13

    iget-object v9, v10, Lg5/ga;->e:Ljava/lang/Object;

    if-nez v9, :cond_14

    :cond_13
    new-instance v9, Lg5/ga;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v10, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v10}, Lg5/b5;->Q()Lc4/f;

    move-result-object v10

    invoke-interface {v10}, Lc4/f;->a()J

    move-result-wide v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v23}, Lg5/ga;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v7}, Lg5/ba;->V()Lg5/k;

    move-result-object v7

    invoke-virtual {v7, v9}, Lg5/k;->u(Lg5/ga;)Z

    :cond_14
    iget-object v7, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v7}, Lg5/ba;->f0()Lg5/da;

    move-result-object v7

    iget-object v9, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->F()Lg5/q3;

    move-result-object v9

    invoke-virtual {v9}, Lg5/q3;->q()Lg5/o3;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v9, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v9}, Lg5/b5;->v()Lg5/o;

    move-result-object v9

    invoke-virtual {v9}, Lg5/o;->n()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_17

    invoke-virtual {v4}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lg5/g5;->J()Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, v7, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v12}, Lg5/ba;->Z()Lg5/t4;

    move-result-object v12

    invoke-virtual {v12, v9}, Lg5/t4;->o(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v12}, Lg5/b5;->F()Lg5/q3;

    move-result-object v12

    invoke-virtual {v12}, Lg5/q3;->l()Lg5/o3;

    move-result-object v12

    const-string v14, "Turning off ad personalization due to account type"

    invoke-virtual {v12, v14}, Lg5/o3;->a(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    const-string v14, "_npa"

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lg5/ga;

    iget-object v5, v5, Lg5/ga;->c:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_15
    const/4 v5, 0x0

    goto :goto_4

    :cond_16
    :goto_5
    new-instance v5, Lg5/ga;

    const-string v19, "auto"

    const-string v20, "_npa"

    iget-object v7, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->Q()Lc4/f;

    move-result-object v7

    invoke-interface {v7}, Lc4/f;->a()J

    move-result-wide v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v23}, Lg5/ga;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lb5/d5;

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_18

    invoke-static {}, Lb5/d5;->v()Lb5/c5;

    move-result-object v9

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg5/ga;

    iget-object v12, v12, Lg5/ga;->c:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lb5/c5;->A(Ljava/lang/String;)Lb5/c5;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg5/ga;

    iget-wide v10, v12, Lg5/ga;->d:J

    invoke-virtual {v9, v10, v11}, Lb5/c5;->B(J)Lb5/c5;

    iget-object v10, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v10}, Lg5/ba;->f0()Lg5/da;

    move-result-object v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg5/ga;

    iget-object v11, v11, Lg5/ga;->e:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lg5/da;->J(Lb5/c5;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lb5/u8;->i()Lb5/x8;

    move-result-object v9

    check-cast v9, Lb5/d5;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_6

    :cond_18
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lb5/s4;->D0(Ljava/lang/Iterable;)Lb5/s4;

    invoke-static {v3}, Lg5/r3;->b(Lg5/u;)Lg5/r3;

    move-result-object v5

    iget-object v7, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    iget-object v8, v5, Lg5/r3;->d:Landroid/os/Bundle;

    iget-object v9, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v9}, Lg5/ba;->V()Lg5/k;

    move-result-object v9

    invoke-virtual {v9, v13}, Lg5/k;->S(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lg5/ia;->t(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v7}, Lg5/b5;->K()Lg5/ia;

    move-result-object v7

    iget-object v8, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v8}, Lg5/b5;->u()Lg5/g;

    move-result-object v8

    invoke-virtual {v8, v13}, Lg5/g;->i(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Lg5/ia;->u(Lg5/r3;I)V

    iget-object v14, v5, Lg5/r3;->d:Landroid/os/Bundle;

    const-string v5, "_c"

    const-wide/16 v7, 0x1

    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->F()Lg5/q3;

    move-result-object v5

    invoke-virtual {v5}, Lg5/q3;->l()Lg5/o3;

    move-result-object v5

    const-string v7, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v7}, Lg5/o3;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    iget-object v7, v3, Lg5/u;->d:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v5

    invoke-virtual {v15}, Lb5/s4;->n0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lg5/ia;->S(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v5

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lg5/ia;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->K()Lg5/ia;

    move-result-object v5

    invoke-virtual {v5, v14, v0, v7}, Lg5/ia;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->V()Lg5/k;

    move-result-object v0

    iget-object v5, v3, Lg5/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lg5/k;->X(Ljava/lang/String;Ljava/lang/String;)Lg5/q;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Lg5/q;

    iget-object v5, v3, Lg5/u;->a:Ljava/lang/String;

    iget-wide v11, v3, Lg5/u;->k:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v17

    const-wide/16 v16, 0x0

    move-object/from16 v28, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    const/16 v26, 0x0

    move-wide/from16 v13, v21

    invoke-direct/range {v4 .. v20}, Lg5/q;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v24

    goto :goto_7

    :cond_1a
    move-object/from16 v23, v4

    move-object/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    move-object/from16 v28, v15

    const/16 v26, 0x0

    iget-wide v4, v0, Lg5/q;->f:J

    iget-wide v6, v3, Lg5/u;->k:J

    invoke-virtual {v0, v6, v7}, Lg5/q;->c(J)Lg5/q;

    move-result-object v0

    move-wide v11, v4

    :goto_7
    iget-object v4, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v4}, Lg5/ba;->V()Lg5/k;

    move-result-object v4

    invoke-virtual {v4, v0}, Lg5/k;->m(Lg5/q;)V

    new-instance v14, Lg5/p;

    iget-object v5, v2, Lg5/v5;->a:Lg5/b5;

    iget-object v6, v3, Lg5/u;->d:Ljava/lang/String;

    iget-object v8, v3, Lg5/u;->a:Ljava/lang/String;

    iget-wide v9, v3, Lg5/u;->k:J

    move-object v4, v14

    move-object/from16 v7, v27

    move-object/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lg5/p;-><init>(Lg5/b5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-static {}, Lb5/j4;->w()Lb5/i4;

    move-result-object v4

    iget-wide v5, v14, Lg5/p;->d:J

    invoke-virtual {v4, v5, v6}, Lb5/i4;->I(J)Lb5/i4;

    iget-object v5, v14, Lg5/p;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lb5/i4;->D(Ljava/lang/String;)Lb5/i4;

    iget-wide v5, v14, Lg5/p;->e:J

    invoke-virtual {v4, v5, v6}, Lb5/i4;->G(J)Lb5/i4;

    iget-object v5, v14, Lg5/p;->f:Lg5/s;

    new-instance v6, Lg5/r;

    invoke-direct {v6, v5}, Lg5/r;-><init>(Lg5/s;)V

    :cond_1b
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6}, Lg5/r;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lb5/n4;->w()Lb5/m4;

    move-result-object v7

    invoke-virtual {v7, v5}, Lb5/m4;->E(Ljava/lang/String;)Lb5/m4;

    iget-object v8, v14, Lg5/p;->f:Lg5/s;

    invoke-virtual {v8, v5}, Lg5/s;->c1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1b

    iget-object v8, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v8}, Lg5/ba;->f0()Lg5/da;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Lg5/da;->I(Lb5/m4;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lb5/i4;->z(Lb5/m4;)Lb5/i4;

    goto :goto_8

    :cond_1c
    move-object/from16 v5, v28

    invoke-virtual {v5, v4}, Lb5/s4;->E0(Lb5/i4;)Lb5/s4;

    invoke-static {}, Lb5/x4;->s()Lb5/u4;

    move-result-object v6

    invoke-static {}, Lb5/l4;->s()Lb5/k4;

    move-result-object v7

    iget-wide v8, v0, Lg5/q;->c:J

    invoke-virtual {v7, v8, v9}, Lb5/k4;->t(J)Lb5/k4;

    iget-object v0, v3, Lg5/u;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lb5/k4;->u(Ljava/lang/String;)Lb5/k4;

    invoke-virtual {v6, v7}, Lb5/u4;->t(Lb5/k4;)Lb5/u4;

    invoke-virtual {v5, v6}, Lb5/s4;->X(Lb5/u4;)Lb5/s4;

    iget-object v0, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->S()Lg5/za;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lg5/g5;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Lb5/s4;->r0()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lb5/i4;->v()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4}, Lb5/i4;->v()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lg5/za;->h(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lb5/s4;->A0(Ljava/lang/Iterable;)Lb5/s4;

    invoke-virtual {v4}, Lb5/i4;->P()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v4}, Lb5/i4;->v()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lb5/s4;->f0(J)Lb5/s4;

    invoke-virtual {v4}, Lb5/i4;->v()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lb5/s4;->J(J)Lb5/s4;

    :cond_1d
    invoke-virtual/range {v23 .. v23}, Lg5/g5;->Y()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_1e

    invoke-virtual {v5, v3, v4}, Lb5/s4;->Y(J)Lb5/s4;

    :cond_1e
    invoke-virtual/range {v23 .. v23}, Lg5/g5;->a0()J

    move-result-wide v6

    cmp-long v0, v6, v24

    if-eqz v0, :cond_1f

    invoke-virtual {v5, v6, v7}, Lb5/s4;->Z(J)Lb5/s4;

    goto :goto_9

    :cond_1f
    cmp-long v0, v3, v24

    if-eqz v0, :cond_20

    invoke-virtual {v5, v3, v4}, Lb5/s4;->Z(J)Lb5/s4;

    :cond_20
    :goto_9
    invoke-virtual/range {v23 .. v23}, Lg5/g5;->e()V

    invoke-virtual/range {v23 .. v23}, Lg5/g5;->Z()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lb5/s4;->A(I)Lb5/s4;

    iget-object v0, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->l()J

    const-wide/32 v3, 0xa822

    invoke-virtual {v5, v3, v4}, Lb5/s4;->i0(J)Lb5/s4;

    iget-object v0, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->Q()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lb5/s4;->h0(J)Lb5/s4;

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lb5/s4;->e0(Z)Lb5/s4;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lb5/q4;->t(Lb5/s4;)Lb5/q4;

    invoke-virtual {v5}, Lb5/s4;->y0()J

    move-result-wide v3

    move-object/from16 v6, v23

    invoke-virtual {v6, v3, v4}, Lg5/g5;->E(J)V

    invoke-virtual {v5}, Lb5/s4;->x0()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lg5/g5;->C(J)V

    iget-object v3, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v3}, Lg5/ba;->V()Lg5/k;

    move-result-object v3

    invoke-virtual {v3, v6}, Lg5/k;->l(Lg5/g5;)V

    iget-object v3, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v3}, Lg5/ba;->V()Lg5/k;

    move-result-object v3

    invoke-virtual {v3}, Lg5/k;->k()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v3, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v3}, Lg5/ba;->V()Lg5/k;

    move-result-object v3

    invoke-virtual {v3}, Lg5/k;->i0()V

    :try_start_8
    iget-object v3, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v3}, Lg5/ba;->f0()Lg5/da;

    move-result-object v3

    invoke-virtual {v0}, Lb5/u8;->i()Lb5/x8;

    move-result-object v0

    check-cast v0, Lb5/r4;

    invoke-virtual {v0}, Lb5/f7;->e()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lg5/da;->N([B)[B

    move-result-object v14
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    invoke-static/range {v27 .. v27}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v2, v4, v3, v0}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v14, v26

    goto :goto_a

    :catch_2
    move-exception v0

    :try_start_9
    iget-object v3, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->l()Lg5/o3;

    move-result-object v3

    const-string v4, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    new-array v14, v3, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, v2, Lg5/q9;->b:Lg5/ba;

    goto/16 :goto_0

    :goto_a
    return-object v14

    :catchall_0
    move-exception v0

    iget-object v2, v2, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v2}, Lg5/ba;->V()Lg5/k;

    move-result-object v2

    invoke-virtual {v2}, Lg5/k;->i0()V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
