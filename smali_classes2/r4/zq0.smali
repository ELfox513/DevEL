.class public final Lr4/zq0;
.super Lr4/qq0;
.source "SourceFile"

# interfaces
.implements Lr4/eo0;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public k:Lr4/fo0;

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Z

.field public s:Lr4/hq0;

.field public t:J

.field public u:J


# direct methods
.method public constructor <init>(Lr4/po0;Lr4/oo0;)V
    .locals 2

    invoke-direct {p0, p1}, Lr4/qq0;-><init>(Lr4/po0;)V

    invoke-interface {p1}, Lr4/po0;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p2, Lr4/oo0;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Lr4/sr0;

    iget-object v1, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/po0;

    invoke-direct {v0, p1, p2, v1}, Lr4/sr0;-><init>(Landroid/content/Context;Lr4/oo0;Lr4/po0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/xp0;

    iget-object v1, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/po0;

    invoke-direct {v0, p1, p2, v1}, Lr4/xp0;-><init>(Landroid/content/Context;Lr4/oo0;Lr4/po0;)V

    :goto_0
    iput-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0, p0}, Lr4/fo0;->T(Lr4/eo0;)V

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lr4/vl0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 3

    iget-object v0, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/po0;

    if-eqz v0, :cond_0

    sget-object v1, Lr4/qm0;->e:Lr4/i83;

    new-instance v2, Lr4/xq0;

    invoke-direct {v2, v0, p1, p2, p3}, Lr4/xq0;-><init>(Lr4/po0;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "Precache exception"

    invoke-static {p1, p2}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    const-string v0, "VideoStreamExoPlayerCache.onException"

    invoke-virtual {p1, p2, v0}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string p1, "Precache error"

    invoke-static {p1, p2}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p1

    const-string v0, "VideoStreamExoPlayerCache.onError"

    invoke-virtual {p1, p2, v0}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lr4/qq0;->f(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 45

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    iput-object v13, v15, Lr4/zq0;->p:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lr4/zq0;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v17, "error"

    const/16 v18, 0x0

    :try_start_0
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v15, Lr4/zq0;->k:Lr4/fo0;

    iget-object v2, v15, Lr4/qq0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lr4/fo0;->R([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v15, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/po0;

    if-eqz v0, :cond_1

    invoke-interface {v0, v14, v15}, Lr4/po0;->D(Ljava/lang/String;Lr4/qq0;)V

    :cond_1
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v19

    sget-object v1, Lr4/rz;->t:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v1, Lr4/rz;->s:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    sget-object v1, Lr4/rz;->r:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    sget-object v1, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const-wide/16 v22, -0x1

    move-wide/from16 v1, v22

    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v3

    sub-long v3, v3, v19

    cmp-long v5, v3, v9

    if-gtz v5, :cond_d

    iget-boolean v3, v15, Lr4/zq0;->q:Z

    if-nez v3, :cond_c

    iget-boolean v3, v15, Lr4/zq0;->r:Z

    const/16 v24, 0x1

    if-eqz v3, :cond_2

    monitor-exit p0

    move-object v5, v15

    goto/16 :goto_7

    :cond_2
    iget-object v3, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v3}, Lr4/fo0;->A()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v3}, Lr4/fo0;->H()J

    move-result-wide v4

    const-wide/16 v25, 0x0

    cmp-long v3, v4, v25

    if-lez v3, :cond_a

    iget-object v3, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v3}, Lr4/fo0;->N()J

    move-result-wide v27

    cmp-long v3, v27, v1

    if-eqz v3, :cond_7

    cmp-long v1, v27, v25

    if-lez v1, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v21, :cond_4

    iget-object v1, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v1}, Lr4/fo0;->I()J

    move-result-wide v1

    move-wide/from16 v29, v1

    goto :goto_3

    :cond_4
    move-wide/from16 v29, v22

    :goto_3
    if-eqz v21, :cond_5

    iget-object v1, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v1}, Lr4/fo0;->J()J

    move-result-wide v1

    move-wide/from16 v31, v1

    goto :goto_4

    :cond_5
    move-wide/from16 v31, v22

    :goto_4
    if-eqz v21, :cond_6

    iget-object v1, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v1}, Lr4/fo0;->K()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-wide/from16 v33, v1

    goto :goto_5

    :cond_6
    move-wide/from16 v33, v22

    :goto_5
    :try_start_2
    invoke-static {}, Lr4/fo0;->P()I

    move-result v16

    invoke-static {}, Lr4/fo0;->Q()I

    move-result v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v36, v4

    move-wide/from16 v4, v27

    move-wide/from16 v38, v6

    move-wide/from16 v6, v36

    move-wide/from16 v40, v9

    move-wide/from16 v9, v29

    move-wide/from16 v42, v11

    move-wide/from16 v11, v31

    move-object/from16 v44, v14

    move-wide/from16 v13, v33

    move/from16 v15, v16

    move/from16 v16, v35

    :try_start_3
    invoke-virtual/range {v1 .. v16}, Lr4/qq0;->n(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v1, v27

    move-wide/from16 v3, v36

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v14

    goto/16 :goto_9

    :cond_7
    move-wide/from16 v38, v6

    move-wide/from16 v40, v9

    move-wide/from16 v42, v11

    move-object/from16 v44, v14

    move-wide v3, v4

    :goto_6
    cmp-long v5, v27, v3

    if-ltz v5, :cond_8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    :try_start_4
    invoke-virtual {v5, v6, v7, v3, v4}, Lr4/qq0;->q(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto :goto_7

    :cond_8
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    iget-object v3, v5, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v3}, Lr4/fo0;->O()J

    move-result-wide v3

    cmp-long v8, v3, v38

    if-ltz v8, :cond_9

    cmp-long v3, v27, v25

    if-lez v3, :cond_9

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_7
    return v24

    :cond_9
    move-wide/from16 v3, v42

    goto :goto_8

    :cond_a
    move-wide/from16 v38, v6

    move-wide/from16 v40, v9

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    move-wide v3, v11

    :goto_8
    :try_start_5
    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit p0

    move-wide v11, v3

    move-object v15, v5

    move-object v13, v6

    move-object v14, v7

    move-wide/from16 v6, v38

    move-wide/from16 v9, v40

    goto/16 :goto_1

    :catch_0
    const-string v1, "interrupted"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wait interrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_b
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :try_start_8
    const-string v1, "exoPlayerReleased"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "ExoPlayer was released during preloading."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_c
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :try_start_a
    const-string v1, "externalAbort"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Abort requested before buffering finished. "

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_d
    move-wide/from16 v40, v9

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :try_start_c
    const-string v1, "downloadTimeout"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timeout reached. Limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v40

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :goto_9
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :goto_a
    move-object/from16 v1, v17

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x22

    add-int/2addr v3, v4

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to preload url "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    const-string v3, "VideoStreamExoPlayerCache.preload"

    invoke-virtual {v2, v0, v3}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/qq0;->release()V

    invoke-static {v1, v0}, Lr4/zq0;->A(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v1, v0}, Lr4/qq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v18
.end method

.method public final g(Ljava/lang/String;[Ljava/lang/String;Lr4/hq0;)Z
    .locals 5

    iput-object p1, p0, Lr4/zq0;->p:Ljava/lang/String;

    iput-object p3, p0, Lr4/zq0;->s:Lr4/hq0;

    invoke-static {p1}, Lr4/zq0;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lr4/zq0;->k:Lr4/fo0;

    iget-object v2, p0, Lr4/qq0;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lr4/fo0;->R([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p2, p0, Lr4/qq0;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/po0;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3, p0}, Lr4/po0;->D(Ljava/lang/String;Lr4/qq0;)V

    :cond_1
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p2

    invoke-interface {p2}, Lc4/f;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lr4/zq0;->t:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lr4/zq0;->u:J

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lr4/zq0;->z(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x22

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to preload url "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "VideoStreamExoPlayerCache.preload"

    invoke-virtual {v1, p2, v2}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lr4/qq0;->release()V

    const-string v1, "error"

    invoke-static {v1, p2}, Lr4/zq0;->A(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v1, p2}, Lr4/qq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final h(I)V
    .locals 1

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0, p1}, Lr4/fo0;->G(I)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0, p1}, Lr4/fo0;->F(I)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0, p1}, Lr4/fo0;->Z(I)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0, p1}, Lr4/fo0;->a0(I)V

    return-void
.end method

.method public final m()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/zq0;->q:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lr4/qq0;->release()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/zq0;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr4/zq0;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/zq0;->p:Ljava/lang/String;

    const-string v2, "externalAbort"

    const-string v3, "Programmatic precache abort."

    invoke-virtual {p0, v1, v0, v2, v3}, Lr4/qq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/fo0;->T(Lr4/eo0;)V

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->U()V

    :cond_0
    return-void
.end method

.method public final t()Lr4/fo0;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lr4/zq0;->r:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/fo0;->T(Lr4/eo0;)V

    iget-object v0, p0, Lr4/zq0;->k:Lr4/fo0;

    iput-object v1, p0, Lr4/zq0;->k:Lr4/fo0;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic u()V
    .locals 32

    move-object/from16 v15, p0

    iget-object v0, v15, Lr4/zq0;->p:Ljava/lang/String;

    invoke-static {v0}, Lr4/zq0;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "error"

    :try_start_0
    sget-object v0, Lr4/rz;->s:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sget-object v2, Lr4/rz;->r:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v11, v2

    sget-object v2, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-interface {v3}, Lc4/f;->a()J

    move-result-wide v3

    iget-wide v5, v15, Lr4/zq0;->t:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_b

    iget-boolean v0, v15, Lr4/zq0;->q:Z

    if-nez v0, :cond_a

    iget-boolean v0, v15, Lr4/zq0;->r:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    move-object v2, v15

    goto/16 :goto_8

    :cond_0
    iget-object v0, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->H()J

    move-result-wide v9

    const-wide/16 v18, 0x0

    cmp-long v0, v9, v18

    if-lez v0, :cond_7

    iget-object v0, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v0}, Lr4/fo0;->N()J

    move-result-wide v6

    iget-wide v0, v15, Lr4/zq0;->u:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_5

    cmp-long v0, v6, v18

    if-lez v0, :cond_1

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    :try_start_2
    iget-object v0, v15, Lr4/zq0;->p:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    :try_start_3
    iget-object v1, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v1}, Lr4/fo0;->I()J

    move-result-wide v20

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v1}, Lr4/fo0;->J()J

    move-result-wide v22

    goto :goto_2

    :cond_3
    move-wide/from16 v22, v3

    :goto_2
    if-eqz v2, :cond_4

    iget-object v1, v15, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v1}, Lr4/fo0;->K()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-wide/from16 v24, v1

    goto :goto_3

    :cond_4
    move-wide/from16 v24, v3

    :goto_3
    :try_start_4
    invoke-static {}, Lr4/fo0;->P()I

    move-result v16

    invoke-static {}, Lr4/fo0;->Q()I

    move-result v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move-wide v4, v6

    move-wide/from16 v27, v6

    move-wide v6, v9

    move-wide/from16 v29, v9

    move-wide/from16 v9, v20

    move-wide/from16 v20, v11

    move-wide/from16 v11, v22

    move-object/from16 v31, v13

    move-wide/from16 v13, v24

    move/from16 v15, v16

    move/from16 v16, v26

    :try_start_5
    invoke-virtual/range {v1 .. v16}, Lr4/qq0;->n(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p0

    move-wide/from16 v0, v27

    :try_start_6
    iput-wide v0, v2, Lr4/zq0;->u:J

    move-wide/from16 v3, v29

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v15

    move-object v5, v13

    goto/16 :goto_6

    :cond_5
    move-wide v0, v6

    move-wide/from16 v20, v11

    move-object/from16 v31, v13

    move-object v2, v15

    move-wide v3, v9

    :goto_4
    cmp-long v5, v0, v3

    if-ltz v5, :cond_6

    iget-object v0, v2, Lr4/zq0;->p:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v5, v31

    :try_start_7
    invoke-virtual {v2, v0, v5, v3, v4}, Lr4/qq0;->q(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v5, v31

    goto/16 :goto_6

    :cond_6
    move-object/from16 v5, v31

    iget-object v3, v2, Lr4/zq0;->k:Lr4/fo0;

    invoke-virtual {v3}, Lr4/fo0;->O()J

    move-result-wide v3

    cmp-long v6, v3, v20

    if-ltz v6, :cond_8

    cmp-long v3, v0, v18

    if-lez v3, :cond_8

    monitor-exit p0

    goto/16 :goto_8

    :cond_7
    move-object v5, v13

    move-object v2, v15

    :cond_8
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    sget-object v0, Lr4/rz;->t:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lr4/zq0;->z(J)V

    return-void

    :cond_9
    move-object v5, v13

    move-object v2, v15

    :try_start_8
    const-string v1, "exoPlayerReleased"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "ExoPlayer was released during preloading."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_a
    move-object v5, v13

    move-object v2, v15

    :try_start_a
    const-string v1, "externalAbort"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Abort requested before buffering finished. "

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_6

    :cond_b
    move-object v5, v13

    move-object v2, v15

    :try_start_c
    const-string v3, "downloadTimeout"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Timeout reached. Limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v5, v13

    move-object v2, v15

    :goto_6
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v5, v13

    move-object v2, v15

    :goto_7
    move-object/from16 v1, v17

    iget-object v3, v2, Lr4/zq0;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x22

    add-int/2addr v6, v7

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Failed to preload url "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr4/cm0;->f(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v3

    const-string v4, "VideoStreamExoPlayerCache.preload"

    invoke-virtual {v3, v0, v4}, Lr4/nl0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lr4/qq0;->release()V

    invoke-static {v1, v0}, Lr4/zq0;->A(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lr4/zq0;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1, v0}, Lr4/qq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Lz2/t;->z()Lr4/iq0;

    move-result-object v0

    iget-object v1, v2, Lr4/zq0;->s:Lr4/hq0;

    invoke-virtual {v0, v1}, Lr4/iq0;->i(Lr4/hq0;)V

    return-void
.end method

.method public final x(I)V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 1

    const-string v0, "Precache onRenderedFirstFrame"

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final z(J)V
    .locals 2

    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/yq0;

    invoke-direct {v1, p0}, Lr4/yq0;-><init>(Lr4/zq0;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
