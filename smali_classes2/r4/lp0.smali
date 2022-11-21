.class public final Lr4/lp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/fk;


# instance fields
.field public final a:Lr4/uk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/uk<",
            "Lr4/fk;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lr4/fk;

.field public final d:Lr4/kp0;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Z

.field public h:Ljava/io/InputStream;

.field public i:Z

.field public j:Landroid/net/Uri;

.field public volatile k:Lr4/to;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:J

.field public q:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/fk;Ljava/lang/String;ILr4/uk;Lr4/kp0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr4/fk;",
            "Ljava/lang/String;",
            "I",
            "Lr4/uk<",
            "Lr4/fk;",
            ">;",
            "Lr4/kp0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lp0;->b:Landroid/content/Context;

    iput-object p2, p0, Lr4/lp0;->c:Lr4/fk;

    iput-object p5, p0, Lr4/lp0;->a:Lr4/uk;

    iput-object p6, p0, Lr4/lp0;->d:Lr4/kp0;

    iput-object p3, p0, Lr4/lp0;->e:Ljava/lang/String;

    iput p4, p0, Lr4/lp0;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/lp0;->l:Z

    iput-boolean p1, p0, Lr4/lp0;->m:Z

    iput-boolean p1, p0, Lr4/lp0;->n:Z

    iput-boolean p1, p0, Lr4/lp0;->o:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/lp0;->p:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, -0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lr4/lp0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/lp0;->q:Lr4/h83;

    sget-object p1, Lr4/rz;->l1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr4/lp0;->g:Z

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1

    iget-boolean v0, p0, Lr4/lp0;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr4/lp0;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/lp0;->c:Lr4/fk;

    invoke-interface {v0, p1, p2, p3}, Lr4/fk;->a([BII)I

    move-result p1

    :goto_0
    iget-boolean p2, p0, Lr4/lp0;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lr4/lp0;->h:Ljava/io/InputStream;

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p0, Lr4/lp0;->a:Lr4/uk;

    if-eqz p2, :cond_2

    check-cast p2, Lr4/xp0;

    invoke-virtual {p2, p0, p1}, Lr4/xp0;->d0(Lr4/fk;I)V

    :cond_2
    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/lp0;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public final d(Lr4/ik;)J
    .locals 14

    const-string v0, "ms"

    const-string v1, "Cache connection took "

    iget-boolean v2, p0, Lr4/lp0;->i:Z

    if-nez v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, p0, Lr4/lp0;->i:Z

    iget-object v3, p1, Lr4/ik;->a:Landroid/net/Uri;

    iput-object v3, p0, Lr4/lp0;->j:Landroid/net/Uri;

    iget-boolean v3, p0, Lr4/lp0;->g:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lr4/lp0;->m(Lr4/ik;)V

    :cond_0
    iget-object v3, p1, Lr4/ik;->a:Landroid/net/Uri;

    invoke-static {v3}, Lr4/to;->X0(Landroid/net/Uri;)Lr4/to;

    move-result-object v3

    iput-object v3, p0, Lr4/lp0;->k:Lr4/to;

    sget-object v3, Lr4/rz;->I2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lr4/lp0;->k:Lr4/to;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lr4/lp0;->k:Lr4/to;

    iget-wide v7, p1, Lr4/ik;->c:J

    iput-wide v7, v3, Lr4/to;->s:J

    iget-object v3, p0, Lr4/lp0;->k:Lr4/to;

    iget-object v7, p0, Lr4/lp0;->e:Ljava/lang/String;

    invoke-static {v7}, Lr4/l13;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lr4/to;->t:Ljava/lang/String;

    iget-object v3, p0, Lr4/lp0;->k:Lr4/to;

    iget v7, p0, Lr4/lp0;->f:I

    iput v7, v3, Lr4/to;->u:I

    iget-object v3, p0, Lr4/lp0;->k:Lr4/to;

    iget-boolean v3, v3, Lr4/to;->r:Z

    if-eqz v3, :cond_1

    sget-object v3, Lr4/rz;->K2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    sget-object v3, Lr4/rz;->J2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v7

    invoke-virtual {v7, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-interface {v3}, Lc4/f;->b()J

    move-result-wide v9

    invoke-static {}, Lz2/t;->x()Lr4/ep;

    iget-object v3, p0, Lr4/lp0;->b:Landroid/content/Context;

    iget-object v11, p0, Lr4/lp0;->k:Lr4/to;

    invoke-static {v3, v11}, Lr4/ep;->a(Landroid/content/Context;Lr4/to;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/16 v11, 0x2c

    :try_start_0
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr4/fp;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Lr4/fp;->c()Z

    move-result v8

    iput-boolean v8, p0, Lr4/lp0;->l:Z

    invoke-virtual {v7}, Lr4/fp;->d()Z

    move-result v8

    iput-boolean v8, p0, Lr4/lp0;->n:Z

    invoke-virtual {v7}, Lr4/fp;->f()Z

    move-result v8

    iput-boolean v8, p0, Lr4/lp0;->o:Z

    invoke-virtual {v7}, Lr4/fp;->e()J

    move-result-wide v12

    iput-wide v12, p0, Lr4/lp0;->p:J

    invoke-virtual {p0}, Lr4/lp0;->n()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lr4/fp;->b()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lr4/lp0;->h:Ljava/io/InputStream;

    iget-boolean v7, p0, Lr4/lp0;->g:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, p1}, Lr4/lp0;->m(Lr4/ik;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object p1, p0, Lr4/lp0;->d:Lr4/kp0;

    invoke-interface {p1, v2, v6, v7}, Lr4/kp0;->a(ZJ)V

    iput-boolean v2, p0, Lr4/lp0;->m:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-wide v4

    :cond_3
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-interface {v3}, Lc4/f;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lr4/lp0;->d:Lr4/kp0;

    invoke-interface {v5, v2, v3, v4}, Lr4/kp0;->a(ZJ)V

    iput-boolean v2, p0, Lr4/lp0;->m:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    const/4 v4, 0x1

    goto :goto_1

    :catch_1
    const/4 v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    goto :goto_5

    :catch_2
    const/4 v4, 0x0

    :goto_1
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lr4/lp0;->d:Lr4/kp0;

    invoke-interface {v5, v4, v2, v3}, Lr4/kp0;->a(ZJ)V

    iput-boolean v4, p0, Lr4/lp0;->m:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    :catch_3
    const/4 v4, 0x0

    :goto_2
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v9

    iget-object v5, p0, Lr4/lp0;->d:Lr4/kp0;

    invoke-interface {v5, v4, v2, v3}, Lr4/kp0;->a(ZJ)V

    iput-boolean v4, p0, Lr4/lp0;->m:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_2
    move-exception p1

    move v2, v4

    :goto_5
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v3

    invoke-interface {v3}, Lc4/f;->b()J

    move-result-wide v3

    sub-long/2addr v3, v9

    iget-object v5, p0, Lr4/lp0;->d:Lr4/kp0;

    invoke-interface {v5, v2, v3, v4}, Lr4/kp0;->a(ZJ)V

    iput-boolean v2, p0, Lr4/lp0;->m:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lr4/lp0;->k:Lr4/to;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lr4/lp0;->k:Lr4/to;

    iget-wide v7, p1, Lr4/ik;->c:J

    iput-wide v7, v0, Lr4/to;->s:J

    iget-object v0, p0, Lr4/lp0;->k:Lr4/to;

    iget-object v1, p0, Lr4/lp0;->e:Ljava/lang/String;

    invoke-static {v1}, Lr4/l13;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lr4/to;->t:Ljava/lang/String;

    iget-object v0, p0, Lr4/lp0;->k:Lr4/to;

    iget v1, p0, Lr4/lp0;->f:I

    iput v1, v0, Lr4/to;->u:I

    invoke-static {}, Lz2/t;->j()Lr4/po;

    move-result-object v0

    iget-object v1, p0, Lr4/lp0;->k:Lr4/to;

    invoke-virtual {v0, v1}, Lr4/po;->f(Lr4/to;)Lr4/qo;

    move-result-object v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lr4/qo;->zza()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lr4/qo;->e()Z

    move-result v1

    iput-boolean v1, p0, Lr4/lp0;->l:Z

    invoke-virtual {v0}, Lr4/qo;->g()Z

    move-result v1

    iput-boolean v1, p0, Lr4/lp0;->n:Z

    invoke-virtual {v0}, Lr4/qo;->c()Z

    move-result v1

    iput-boolean v1, p0, Lr4/lp0;->o:Z

    invoke-virtual {v0}, Lr4/qo;->Z0()J

    move-result-wide v7

    iput-wide v7, p0, Lr4/lp0;->p:J

    iput-boolean v2, p0, Lr4/lp0;->m:Z

    invoke-virtual {p0}, Lr4/lp0;->n()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lr4/qo;->X0()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lr4/lp0;->h:Ljava/io/InputStream;

    iget-boolean v0, p0, Lr4/lp0;->g:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lr4/lp0;->m(Lr4/ik;)V

    :cond_6
    return-wide v4

    :cond_7
    :goto_7
    iput-boolean v6, p0, Lr4/lp0;->m:Z

    iget-object v0, p0, Lr4/lp0;->k:Lr4/to;

    if-eqz v0, :cond_8

    new-instance v0, Lr4/ik;

    iget-object v1, p0, Lr4/lp0;->k:Lr4/to;

    iget-object v1, v1, Lr4/to;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, p1, Lr4/ik;->b:J

    iget-wide v6, p1, Lr4/ik;->c:J

    iget-wide v8, p1, Lr4/ik;->d:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lr4/ik;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_8
    iget-object v0, p0, Lr4/lp0;->c:Lr4/fk;

    invoke-interface {v0, p1}, Lr4/fk;->d(Lr4/ik;)J

    move-result-wide v0

    return-wide v0

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Attempt to open an already open CacheDataSource."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lr4/lp0;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/lp0;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/lp0;->j:Landroid/net/Uri;

    iget-object v1, p0, Lr4/lp0;->h:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lc4/m;->a(Ljava/io/Closeable;)V

    iput-object v0, p0, Lr4/lp0;->h:Ljava/io/InputStream;

    return-void

    :cond_0
    iget-object v0, p0, Lr4/lp0;->c:Lr4/fk;

    invoke-interface {v0}, Lr4/fk;->e()V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lr4/lp0;->l:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lr4/lp0;->m:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lr4/lp0;->n:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lr4/lp0;->o:Z

    return v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lr4/lp0;->p:J

    return-wide v0
.end method

.method public final k()J
    .locals 5

    iget-object v0, p0, Lr4/lp0;->k:Lr4/to;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lr4/lp0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/lp0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/lp0;->q:Lr4/h83;

    if-nez v0, :cond_2

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    new-instance v3, Lr4/jp0;

    invoke-direct {v3, p0}, Lr4/jp0;-><init>(Lr4/lp0;)V

    invoke-interface {v0, v3}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    iput-object v0, p0, Lr4/lp0;->q:Lr4/h83;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/lp0;->q:Lr4/h83;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lr4/lp0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lr4/lp0;->q:Lr4/h83;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lr4/lp0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    :catch_0
    return-wide v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final synthetic l()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lz2/t;->j()Lr4/po;

    move-result-object v0

    iget-object v1, p0, Lr4/lp0;->k:Lr4/to;

    invoke-virtual {v0, v1}, Lr4/po;->g(Lr4/to;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lr4/ik;)V
    .locals 1

    iget-object v0, p0, Lr4/lp0;->a:Lr4/uk;

    if-eqz v0, :cond_0

    check-cast v0, Lr4/xp0;

    invoke-virtual {v0, p0, p1}, Lr4/xp0;->c0(Lr4/fk;Lr4/ik;)V

    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 4

    iget-boolean v0, p0, Lr4/lp0;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lr4/rz;->L2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lr4/lp0;->n:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    sget-object v0, Lr4/rz;->M2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lr4/lp0;->o:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method
