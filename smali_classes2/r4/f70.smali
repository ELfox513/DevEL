.class public final Lr4/f70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i84;


# instance fields
.field public volatile a:Lr4/r60;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f70;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic b(Lr4/f70;)Lr4/r60;
    .locals 0

    iget-object p0, p0, Lr4/f70;->a:Lr4/r60;

    return-object p0
.end method

.method public static synthetic c(Lr4/f70;)V
    .locals 1

    iget-object v0, p0, Lr4/f70;->a:Lr4/r60;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lr4/f70;->a:Lr4/r60;

    invoke-virtual {p0}, Lx3/c;->e()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method


# virtual methods
.method public final a(Lr4/q84;)Lr4/l84;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/q84<",
            "*>;)",
            "Lr4/l84;"
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    sget-object v2, Lr4/s60;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Lr4/q84;->B()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lr4/s60;

    invoke-virtual {p1}, Lr4/q84;->u()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v4, v3}, Lr4/s60;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v3

    const/4 p1, 0x0

    const/16 v6, 0x34

    :try_start_0
    new-instance v7, Lr4/vm0;

    invoke-direct {v7}, Lr4/vm0;-><init>()V

    new-instance v8, Lr4/d70;

    invoke-direct {v8, p0, v7}, Lr4/d70;-><init>(Lr4/f70;Lr4/vm0;)V

    new-instance v9, Lr4/e70;

    invoke-direct {v9, p0, v7}, Lr4/e70;-><init>(Lr4/f70;Lr4/vm0;)V

    new-instance v10, Lr4/r60;

    iget-object v11, p0, Lr4/f70;->b:Landroid/content/Context;

    invoke-static {}, Lz2/t;->r()Lb3/c1;

    move-result-object v12

    invoke-virtual {v12}, Lb3/c1;->a()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v10, v11, v12, v8, v9}, Lr4/r60;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;)V

    iput-object v10, p0, Lr4/f70;->a:Lr4/r60;

    iget-object v8, p0, Lr4/f70;->a:Lr4/r60;

    invoke-virtual {v8}, Lx3/c;->p()V

    new-instance v8, Lr4/b70;

    invoke-direct {v8, p0, v2}, Lr4/b70;-><init>(Lr4/f70;Lr4/s60;)V

    sget-object v2, Lr4/qm0;->a:Lr4/i83;

    invoke-static {v7, v8, v2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v7

    sget-object v8, Lr4/rz;->S2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v9

    invoke-virtual {v9, v8}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Lr4/qm0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v7, v8, v9, v10, v11}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v7

    new-instance v8, Lr4/c70;

    invoke-direct {v8, p0}, Lr4/c70;-><init>(Lr4/f70;)V

    invoke-interface {v7, v8, v2}, Lr4/h83;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v7

    invoke-interface {v7}, Lc4/f;->b()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    new-instance v0, Lr4/mg0;

    invoke-direct {v0, v2}, Lr4/mg0;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v1, Lr4/v60;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Lr4/mg0;->X0(Landroid/os/Parcelable$Creator;)Ly3/d;

    move-result-object v0

    check-cast v0, Lr4/v60;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-boolean v1, v0, Lr4/v60;->a:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lr4/v60;->p:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, v0, Lr4/v60;->q:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object p1, v0, Lr4/v60;->p:[Ljava/lang/String;

    array-length v1, p1

    if-ge v5, v1, :cond_3

    aget-object p1, p1, v5

    iget-object v1, v0, Lr4/v60;->q:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v9, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lr4/l84;

    iget v7, v0, Lr4/v60;->d:I

    iget-object v8, v0, Lr4/v60;->k:[B

    iget-boolean v10, v0, Lr4/v60;->r:Z

    iget-wide v11, v0, Lr4/v60;->s:J

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Lr4/l84;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_2
    return-object p1

    :cond_4
    new-instance p1, Lr4/z84;

    iget-object v0, v0, Lr4/v60;->b:Ljava/lang/String;

    invoke-direct {p1, v0}, Lr4/z84;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    throw p1

    :catch_0
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object p1
.end method
