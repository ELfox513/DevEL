.class public final Lr4/ax0;
.super Lr4/mw;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/im0;

.field public final d:Lr4/gq1;

.field public final k:Lr4/s12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/s12<",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lr4/y72;

.field public final q:Lr4/pu1;

.field public final r:Lr4/ik0;

.field public final s:Lr4/lq1;

.field public final t:Lr4/iv1;

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/gq1;Lr4/s12;Lr4/y72;Lr4/pu1;Lr4/ik0;Lr4/lq1;Lr4/iv1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/im0;",
            "Lr4/gq1;",
            "Lr4/s12<",
            "Lr4/zp2;",
            "Lr4/o32;",
            ">;",
            "Lr4/y72;",
            "Lr4/pu1;",
            "Lr4/ik0;",
            "Lr4/lq1;",
            "Lr4/iv1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/mw;-><init>()V

    iput-object p1, p0, Lr4/ax0;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/ax0;->b:Lr4/im0;

    iput-object p3, p0, Lr4/ax0;->d:Lr4/gq1;

    iput-object p4, p0, Lr4/ax0;->k:Lr4/s12;

    iput-object p5, p0, Lr4/ax0;->p:Lr4/y72;

    iput-object p6, p0, Lr4/ax0;->q:Lr4/pu1;

    iput-object p7, p0, Lr4/ax0;->r:Lr4/ik0;

    iput-object p8, p0, Lr4/ax0;->s:Lr4/lq1;

    iput-object p9, p0, Lr4/ax0;->t:Lr4/iv1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/ax0;->u:Z

    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ax0;->p:Lr4/y72;

    invoke-virtual {v0, p1}, Lr4/y72;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized H0(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb3/h;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final N5(Lr4/yw;)V
    .locals 2

    iget-object v0, p0, Lr4/ax0;->t:Lr4/iv1;

    sget-object v1, Lr4/hv1;->b:Lr4/hv1;

    invoke-virtual {v0, p1, v1}, Lr4/iv1;->k(Lr4/yw;Lr4/hv1;)V

    return-void
.end method

.method public final O5(Lf4/a;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Wrapped context is null. Failed to open debug menu."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_1

    const-string p1, "Context is null. Failed to open debug menu."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lb3/y;

    invoke-direct {v0, p1}, Lb3/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lb3/y;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/ax0;->b:Lr4/im0;

    iget-object p1, p1, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lb3/y;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb3/y;->b()V

    return-void
.end method

.method public final declared-synchronized Q(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lr4/rz;->t2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->l()Lz2/e;

    move-result-object v0

    iget-object v1, p0, Lr4/ax0;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/ax0;->b:Lr4/im0;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lz2/e;->a(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final S2(Lr4/sy;)V
    .locals 2

    iget-object v0, p0, Lr4/ax0;->r:Lr4/ik0;

    iget-object v1, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lr4/ik0;->h(Landroid/content/Context;Lr4/sy;)V

    return-void
.end method

.method public final Y0(Lr4/n70;)V
    .locals 1

    iget-object v0, p0, Lr4/ax0;->q:Lr4/pu1;

    invoke-virtual {v0, p1}, Lr4/pu1;->h(Lr4/n70;)V

    return-void
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->k0()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/t;->n()Lb3/c0;

    move-result-object v1

    iget-object v2, p0, Lr4/ax0;->a:Landroid/content/Context;

    iget-object v3, p0, Lr4/ax0;->b:Lr4/im0;

    iget-object v3, v3, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lb3/c0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb3/y1;->Q0(Z)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lb3/y1;->V0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lr4/ax0;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "Mobile ads is initialized already."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    iget-object v1, p0, Lr4/ax0;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/ax0;->b:Lr4/im0;

    invoke-virtual {v0, v1, v2}, Lr4/nl0;->i(Landroid/content/Context;Lr4/im0;)V

    invoke-static {}, Lz2/t;->j()Lr4/po;

    move-result-object v0

    iget-object v1, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lr4/po;->d(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ax0;->u:Z

    iget-object v0, p0, Lr4/ax0;->q:Lr4/pu1;

    invoke-virtual {v0}, Lr4/pu1;->i()V

    iget-object v0, p0, Lr4/ax0;->p:Lr4/y72;

    invoke-virtual {v0}, Lr4/y72;->a()V

    sget-object v0, Lr4/rz;->u2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/ax0;->s:Lr4/lq1;

    invoke-virtual {v0}, Lr4/lq1;->a()V

    :cond_1
    iget-object v0, p0, Lr4/ax0;->t:Lr4/iv1;

    invoke-virtual {v0}, Lr4/iv1;->a()V

    sget-object v0, Lr4/rz;->E6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    new-instance v1, Lr4/xw0;

    invoke-direct {v1, p0}, Lr4/xw0;-><init>(Lr4/ax0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f7(Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "Adapters must be initialized on the main thread."

    invoke-static {v0}, Lx3/q;->e(Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->p()Lr4/hl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/hl0;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Could not initialize rewarded ads."

    invoke-static {v0, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lr4/ax0;->d:Lr4/gq1;

    invoke-virtual {p1}, Lr4/gq1;->d()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ab0;

    iget-object v1, v1, Lr4/ab0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/za0;

    iget-object v3, v2, Lr4/za0;->k:Ljava/lang/String;

    iget-object v2, v2, Lr4/za0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v3, :cond_5

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_1
    iget-object v3, p0, Lr4/ax0;->k:Lr4/s12;

    invoke-interface {v3, v2, v0}, Lr4/s12;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/t12;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, v3, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v4, Lr4/zp2;

    invoke-virtual {v4}, Lr4/zp2;->q()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Lr4/zp2;->t()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, v3, Lr4/t12;->c:Lr4/u81;

    check-cast v3, Lr4/o32;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v5, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v3, v1}, Lr4/zp2;->u(Landroid/content/Context;Lr4/qh0;Ljava/util/List;)V

    const-string v1, "Initialized rewarded video mediation adapter "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lr4/cm0;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lr4/mp2; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x38

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to initialize rewarded video mediation adapter \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public final declared-synchronized i()F
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v0

    invoke-virtual {v0}, Lb3/h;->b()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j2(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb3/h;->a(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lz2/t;->i()Lb3/h;

    move-result-object v0

    invoke-virtual {v0}, Lb3/h;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ax0;->b:Lr4/im0;

    iget-object v0, v0, Lr4/im0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ax0;->q:Lr4/pu1;

    invoke-virtual {v0}, Lr4/pu1;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p5(Ljava/lang/String;Lf4/a;)V
    .locals 4

    iget-object v0, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-static {v0}, Lr4/rz;->a(Landroid/content/Context;)V

    sget-object v0, Lr4/rz;->w2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/ax0;->a:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lr4/rz;->t2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lr4/rz;->B0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    or-int/2addr v0, v3

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lf4/b;->t0(Lf4/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    new-instance v0, Lr4/yw0;

    invoke-direct {v0, p0, p2}, Lr4/yw0;-><init>(Lr4/ax0;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    move v2, v0

    move-object v0, p2

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {}, Lz2/t;->l()Lz2/e;

    move-result-object p2

    iget-object v1, p0, Lr4/ax0;->a:Landroid/content/Context;

    iget-object v2, p0, Lr4/ax0;->b:Lr4/im0;

    invoke-virtual {p2, v1, v2, p1, v0}, Lz2/e;->a(Landroid/content/Context;Lr4/im0;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lr4/ax0;->q:Lr4/pu1;

    invoke-virtual {v0}, Lr4/pu1;->g()V

    return-void
.end method

.method public final s1(Lr4/fb0;)V
    .locals 1

    iget-object v0, p0, Lr4/ax0;->d:Lr4/gq1;

    invoke-virtual {v0, p1}, Lr4/gq1;->a(Lr4/fb0;)V

    return-void
.end method
