.class public final Lr4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/q;


# static fields
.field public static z:Lr4/n;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/xy2;

.field public final d:Lr4/fz2;

.field public final k:Lr4/hz2;

.field public final p:Lr4/p0;

.field public final q:Lr4/hx2;

.field public final r:Ljava/util/concurrent/Executor;

.field public final s:Lr4/ez2;

.field public final t:Ljava/util/concurrent/CountDownLatch;

.field public volatile u:J

.field public final v:Ljava/lang/Object;

.field public volatile w:Z

.field public volatile x:Z

.field public final y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/hx2;Lr4/xy2;Lr4/fz2;Lr4/hz2;Lr4/p0;Ljava/util/concurrent/Executor;Lr4/dx2;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/n;->u:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/n;->v:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/n;->x:Z

    iput-object p1, p0, Lr4/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/n;->q:Lr4/hx2;

    iput-object p3, p0, Lr4/n;->b:Lr4/xy2;

    iput-object p4, p0, Lr4/n;->d:Lr4/fz2;

    iput-object p5, p0, Lr4/n;->k:Lr4/hz2;

    iput-object p6, p0, Lr4/n;->p:Lr4/p0;

    iput-object p7, p0, Lr4/n;->r:Ljava/util/concurrent/Executor;

    iput p9, p0, Lr4/n;->y:I

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lr4/l;

    invoke-direct {p1, p0, p8}, Lr4/l;-><init>(Lr4/n;Lr4/dx2;)V

    iput-object p1, p0, Lr4/n;->s:Lr4/ez2;

    return-void
.end method

.method public static synthetic h(Lr4/n;)Lr4/hx2;
    .locals 0

    iget-object p0, p0, Lr4/n;->q:Lr4/hx2;

    return-object p0
.end method

.method public static synthetic i(Lr4/n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/n;->v:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic j(Lr4/n;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/n;->w:Z

    return p0
.end method

.method public static synthetic k(Lr4/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lr4/n;->w:Z

    return p1
.end method

.method public static declared-synchronized l(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lr4/n;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-class v11, Lr4/n;

    monitor-enter v11

    :try_start_0
    sget-object v1, Lr4/n;->z:Lr4/n;

    if-nez v1, :cond_1

    invoke-static {}, Lr4/jx2;->d()Lr4/ix2;

    move-result-object v1

    move-object v2, p0

    invoke-virtual {v1, p0}, Lr4/ix2;->a(Ljava/lang/String;)Lr4/ix2;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lr4/ix2;->b(Z)Lr4/ix2;

    invoke-virtual {v1}, Lr4/ix2;->d()Lr4/jx2;

    move-result-object v3

    move/from16 v1, p4

    invoke-static {v0, v8, v1}, Lr4/hx2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lr4/hx2;

    move-result-object v9

    sget-object v1, Lr4/rz;->W1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lr4/x;->b(Landroid/content/Context;)Lr4/x;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    invoke-static {v0, v8, v9, v3}, Lr4/by2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/hx2;Lr4/jx2;)Lr4/by2;

    move-result-object v4

    new-instance v6, Lr4/o0;

    invoke-direct {v6, v0}, Lr4/o0;-><init>(Landroid/content/Context;)V

    new-instance v5, Lr4/c1;

    invoke-direct {v5, v0, v6}, Lr4/c1;-><init>(Landroid/content/Context;Lr4/o0;)V

    new-instance v10, Lr4/p0;

    move-object v2, v10

    invoke-direct/range {v2 .. v7}, Lr4/p0;-><init>(Lr4/jx2;Lr4/by2;Lr4/c1;Lr4/o0;Lr4/x;)V

    invoke-static {v0, v9}, Lr4/ky2;->b(Landroid/content/Context;Lr4/hx2;)I

    move-result v12

    new-instance v13, Lr4/dx2;

    invoke-direct {v13}, Lr4/dx2;-><init>()V

    new-instance v14, Lr4/n;

    new-instance v4, Lr4/xy2;

    invoke-direct {v4, v0, v12}, Lr4/xy2;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lr4/fz2;

    new-instance v1, Lr4/k;

    invoke-direct {v1, v9}, Lr4/k;-><init>(Lr4/hx2;)V

    sget-object v2, Lr4/rz;->v1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v5, v0, v12, v1, v2}, Lr4/fz2;-><init>(Landroid/content/Context;ILr4/ly2;Z)V

    new-instance v6, Lr4/hz2;

    invoke-direct {v6, v0, v10, v9, v13}, Lr4/hz2;-><init>(Landroid/content/Context;Lr4/iz2;Lr4/hx2;Lr4/dx2;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v7, v10

    move-object/from16 v8, p2

    move-object v9, v13

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lr4/n;-><init>(Landroid/content/Context;Lr4/hx2;Lr4/xy2;Lr4/fz2;Lr4/hz2;Lr4/p0;Ljava/util/concurrent/Executor;Lr4/dx2;I)V

    sput-object v14, Lr4/n;->z:Lr4/n;

    invoke-virtual {v14}, Lr4/n;->o()V

    sget-object v0, Lr4/n;->z:Lr4/n;

    invoke-virtual {v0}, Lr4/n;->q()V

    :cond_1
    sget-object v0, Lr4/n;->z:Lr4/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized m(Ljava/lang/String;Landroid/content/Context;ZZ)Lr4/n;
    .locals 2

    const-class v0, Lr4/n;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {p0, p1, v1, p2, p3}, Lr4/n;->l(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lr4/n;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic p(Lr4/n;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lr4/n;->r(I)Lr4/wy2;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lr4/wy2;->a()Lr4/p2;

    move-result-object v4

    invoke-virtual {v4}, Lr4/p2;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lr4/wy2;->a()Lr4/p2;

    move-result-object v3

    invoke-virtual {v3}, Lr4/p2;->D()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v4

    move-object v9, v8

    :goto_0
    :try_start_0
    iget-object v5, p0, Lr4/n;->a:Landroid/content/Context;

    const/4 v6, 0x1

    iget v7, p0, Lr4/n;->y:I

    const-string v10, "1"

    iget-object v11, p0, Lr4/n;->q:Lr4/hx2;

    invoke-static/range {v5 .. v11}, Lr4/rx2;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lr4/hx2;)Lr4/cz2;

    move-result-object v3

    iget-object v4, v3, Lr4/cz2;->b:[B

    if-eqz v4, :cond_c

    array-length v5, v4
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    :try_start_1
    invoke-static {v4}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object v4

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v5

    invoke-static {v4, v5}, Lr4/m2;->I(Lr4/ll3;Lr4/bm3;)Lr4/m2;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lr4/bn3; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Lr4/m2;->C()Lr4/p2;

    move-result-object v5

    invoke-virtual {v5}, Lr4/p2;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lr4/m2;->C()Lr4/p2;

    move-result-object v5

    invoke-virtual {v5}, Lr4/p2;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lr4/m2;->E()Lr4/ll3;

    move-result-object v5

    invoke-virtual {v5}, Lr4/ll3;->R()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, v2}, Lr4/n;->r(I)Lr4/wy2;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lr4/wy2;->a()Lr4/p2;

    move-result-object v5

    invoke-virtual {v4}, Lr4/m2;->C()Lr4/p2;

    move-result-object v6

    invoke-virtual {v6}, Lr4/p2;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lr4/p2;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lr4/m2;->C()Lr4/p2;

    move-result-object v6

    invoke-virtual {v6}, Lr4/p2;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lr4/p2;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_4
    :goto_1
    iget-object v5, p0, Lr4/n;->s:Lr4/ez2;

    iget v3, v3, Lr4/cz2;->d:I

    sget-object v6, Lr4/rz;->t1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v6}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lr4/n;->d:Lr4/fz2;

    invoke-virtual {v3, v4}, Lr4/fz2;->b(Lr4/m2;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lr4/n;->d:Lr4/fz2;

    invoke-virtual {v3, v4, v5}, Lr4/fz2;->a(Lr4/m2;Lr4/ez2;)Z

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lr4/n;->b:Lr4/xy2;

    invoke-virtual {v3, v4, v5}, Lr4/xy2;->a(Lr4/m2;Lr4/ez2;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_8

    :cond_7
    iget-object v2, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v3, 0xfa9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lr4/hx2;->b(IJ)Lj5/i;
    :try_end_2
    .catch Lr4/bn3; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_8
    :try_start_3
    invoke-virtual {p0, v2}, Lr4/n;->r(I)Lr4/wy2;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {v4, v3}, Lr4/hz2;->a(Lr4/wy2;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lr4/n;->x:Z

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lr4/n;->u:J
    :try_end_3
    .catch Lr4/bn3; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    :cond_b
    :goto_4
    :try_start_4
    iget-object v2, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v3, 0x1392

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lr4/hx2;->b(IJ)Lj5/i;
    :try_end_4
    .catch Lr4/bn3; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    :catch_0
    :try_start_5
    iget-object v2, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v3, 0x7ee

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lr4/hx2;->b(IJ)Lj5/i;
    :try_end_5
    .catch Lr4/bn3; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    :cond_c
    :goto_5
    :try_start_6
    iget-object v2, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v3, 0x1391

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lr4/hx2;->b(IJ)Lj5/i;
    :try_end_6
    .catch Lr4/bn3; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v2

    :try_start_7
    iget-object v3, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v4, 0xfa2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v4, v5, v6, v2}, Lr4/hx2;->c(IJLjava/lang/Exception;)Lj5/i;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    :goto_6
    iget-object p0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lr4/n;->q()V

    iget-object v0, p0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {v0}, Lr4/hz2;->b()Lr4/kx2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Lr4/kx2;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v5, 0x1389

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const/4 v9, 0x0

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lr4/hx2;->d(IJLjava/lang/String;Ljava/util/Map;)Lj5/i;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lr4/n;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr4/n;->p:Lr4/p0;

    invoke-virtual {v0, p1}, Lr4/p0;->c(Landroid/view/View;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lr4/n;->q()V

    iget-object p3, p0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {p3}, Lr4/hz2;->b()Lr4/kx2;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-interface {p3, p1, v2, p2, v2}, Lr4/kx2;->d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v4, 0x138a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v5, p2, v0

    const/4 v8, 0x0

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lr4/hx2;->d(IJLjava/lang/String;Ljava/util/Map;)Lj5/i;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lr4/n;->q()V

    iget-object v1, v0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {v1}, Lr4/hz2;->b()Lr4/kx2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Lr4/kx2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lr4/n;->q:Lr4/hx2;

    const/16 v11, 0x1388

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v8

    const/4 v15, 0x0

    move-object v14, v1

    invoke-virtual/range {v10 .. v15}, Lr4/hx2;->d(IJLjava/lang/String;Ljava/util/Map;)Lj5/i;

    return-object v1

    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public final f(III)V
    .locals 0

    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {v0}, Lr4/hz2;->b()Lr4/kx2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1}, Lr4/kx2;->b(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lr4/gz2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lr4/n;->q:Lr4/hx2;

    invoke-virtual {p1}, Lr4/gz2;->a()I

    move-result v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lr4/hx2;->c(IJLjava/lang/Exception;)Lj5/i;

    :cond_0
    return-void
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/n;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lr4/n;->r(I)Lr4/wy2;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {v0, v3}, Lr4/hz2;->a(Lr4/wy2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lr4/n;->x:Z

    iget-object v0, p0, Lr4/n;->t:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lr4/n;->q:Lr4/hx2;

    const/16 v3, 0xfad

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lr4/hx2;->b(IJ)Lj5/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()V
    .locals 6

    iget-boolean v0, p0, Lr4/n;->w:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lr4/n;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/n;->w:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lr4/n;->u:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lr4/n;->k:Lr4/hz2;

    invoke-virtual {v1}, Lr4/hz2;->c()Lr4/wy2;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3, v4}, Lr4/wy2;->e(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lr4/n;->y:I

    invoke-static {v1}, Lr4/ky2;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr4/n;->r:Ljava/util/concurrent/Executor;

    new-instance v2, Lr4/m;

    invoke-direct {v2, p0}, Lr4/m;-><init>(Lr4/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public final r(I)Lr4/wy2;
    .locals 1

    iget p1, p0, Lr4/n;->y:I

    invoke-static {p1}, Lr4/ky2;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lr4/rz;->t1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/n;->d:Lr4/fz2;

    invoke-virtual {p1, v0}, Lr4/fz2;->c(I)Lr4/wy2;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lr4/n;->b:Lr4/xy2;

    invoke-virtual {p1, v0}, Lr4/xy2;->c(I)Lr4/wy2;

    move-result-object p1

    return-object p1
.end method
