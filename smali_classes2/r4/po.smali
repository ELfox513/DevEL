.class public final Lr4/po;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/lang/Object;

.field public c:Lr4/so;

.field public d:Landroid/content/Context;

.field public e:Lr4/vo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/lo;

    invoke-direct {v0, p0}, Lr4/lo;-><init>(Lr4/po;)V

    iput-object v0, p0, Lr4/po;->a:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lr4/po;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/po;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lr4/po;)Lr4/so;
    .locals 0

    iget-object p0, p0, Lr4/po;->c:Lr4/so;

    return-object p0
.end method

.method public static synthetic c(Lr4/po;Lr4/so;)Lr4/so;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/po;->c:Lr4/so;

    return-object p1
.end method

.method public static synthetic h(Lr4/po;)V
    .locals 0

    invoke-virtual {p0}, Lr4/po;->l()V

    return-void
.end method

.method public static synthetic j(Lr4/po;)V
    .locals 2

    iget-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/po;->c:Lr4/so;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lx3/c;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lr4/po;->c:Lr4/so;

    invoke-virtual {v1}, Lx3/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lr4/po;->c:Lr4/so;

    invoke-virtual {v1}, Lx3/c;->e()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lr4/po;->c:Lr4/so;

    iput-object v1, p0, Lr4/po;->e:Lr4/vo;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic k(Lr4/po;Lr4/vo;)Lr4/vo;
    .locals 0

    iput-object p1, p0, Lr4/po;->e:Lr4/vo;

    return-object p1
.end method


# virtual methods
.method public final d(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/po;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr4/po;->d:Landroid/content/Context;

    sget-object p1, Lr4/rz;->E2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lr4/po;->l()V

    goto :goto_0

    :cond_2
    sget-object p1, Lr4/rz;->D2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lr4/mo;

    invoke-direct {p1, p0}, Lr4/mo;-><init>(Lr4/po;)V

    invoke-static {}, Lz2/t;->g()Lr4/hn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lr4/hn;->b(Lr4/gn;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 5

    sget-object v0, Lr4/rz;->F2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lr4/po;->l()V

    sget-object v1, Lb3/k2;->i:Lr4/c03;

    iget-object v2, p0, Lr4/po;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lr4/po;->a:Ljava/lang/Runnable;

    sget-object v3, Lr4/rz;->G2:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public final f(Lr4/to;)Lr4/qo;
    .locals 2

    iget-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/po;->e:Lr4/vo;

    if-nez v1, :cond_0

    new-instance p1, Lr4/qo;

    invoke-direct {p1}, Lr4/qo;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lr4/po;->c:Lr4/so;

    invoke-virtual {v1}, Lr4/so;->h0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/po;->e:Lr4/vo;

    invoke-virtual {v1, p1}, Lr4/vo;->A2(Lr4/to;)Lr4/qo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lr4/po;->e:Lr4/vo;

    invoke-virtual {v1, p1}, Lr4/vo;->b2(Lr4/to;)Lr4/qo;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lr4/qo;

    invoke-direct {p1}, Lr4/qo;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final g(Lr4/to;)J
    .locals 4

    iget-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/po;->e:Lr4/vo;

    const-wide/16 v2, -0x2

    if-nez v1, :cond_0

    monitor-exit v0

    return-wide v2

    :cond_0
    iget-object v1, p0, Lr4/po;->c:Lr4/so;

    invoke-virtual {v1}, Lr4/so;->h0()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lr4/po;->e:Lr4/vo;

    invoke-virtual {v1, p1}, Lr4/vo;->e3(Lr4/to;)J

    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide v1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i(Lx3/c$a;Lx3/c$b;)Lr4/so;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lr4/so;

    iget-object v1, p0, Lr4/po;->d:Landroid/content/Context;

    invoke-static {}, Lz2/t;->r()Lb3/c1;

    move-result-object v2

    invoke-virtual {v2}, Lb3/c1;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lr4/so;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lr4/po;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/po;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/po;->c:Lr4/so;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/no;

    invoke-direct {v1, p0}, Lr4/no;-><init>(Lr4/po;)V

    new-instance v2, Lr4/oo;

    invoke-direct {v2, p0}, Lr4/oo;-><init>(Lr4/po;)V

    invoke-virtual {p0, v1, v2}, Lr4/po;->i(Lx3/c$a;Lx3/c$b;)Lr4/so;

    move-result-object v1

    iput-object v1, p0, Lr4/po;->c:Lr4/so;

    invoke-virtual {v1}, Lx3/c;->p()V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
