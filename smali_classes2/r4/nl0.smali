.class public final Lr4/nl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lb3/b2;

.field public final c:Lr4/rl0;

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:Lr4/im0;

.field public g:Lr4/wz;

.field public h:Ljava/lang/Boolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Lr4/ll0;

.field public final k:Ljava/lang/Object;

.field public l:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    new-instance v0, Lb3/b2;

    invoke-direct {v0}, Lb3/b2;-><init>()V

    iput-object v0, p0, Lr4/nl0;->b:Lb3/b2;

    new-instance v1, Lr4/rl0;

    invoke-static {}, Lr4/yu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lr4/rl0;-><init>(Ljava/lang/String;Lb3/y1;)V

    iput-object v1, p0, Lr4/nl0;->c:Lr4/rl0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/nl0;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lr4/nl0;->g:Lr4/wz;

    iput-object v1, p0, Lr4/nl0;->h:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lr4/nl0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lr4/ll0;

    invoke-direct {v0, v1}, Lr4/ll0;-><init>(Lr4/ml0;)V

    iput-object v0, p0, Lr4/nl0;->j:Lr4/ll0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/nl0;->k:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lr4/nl0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lr4/nl0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lr4/nl0;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lr4/nl0;)Lr4/im0;
    .locals 0

    iget-object p0, p0, Lr4/nl0;->f:Lr4/im0;

    return-object p0
.end method

.method public static synthetic d(Lr4/nl0;)Lr4/wz;
    .locals 0

    iget-object p0, p0, Lr4/nl0;->g:Lr4/wz;

    return-object p0
.end method


# virtual methods
.method public final e()Lr4/wz;
    .locals 2

    iget-object v0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/nl0;->g:Lr4/wz;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lr4/nl0;->h:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/nl0;->h:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lr4/nl0;->j:Lr4/ll0;

    invoke-virtual {v0}, Lr4/ll0;->a()V

    return-void
.end method

.method public final i(Landroid/content/Context;Lr4/im0;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lr4/nl0;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lr4/nl0;->e:Landroid/content/Context;

    iput-object p2, p0, Lr4/nl0;->f:Lr4/im0;

    invoke-static {}, Lz2/t;->g()Lr4/hn;

    move-result-object v1

    iget-object v2, p0, Lr4/nl0;->c:Lr4/rl0;

    invoke-virtual {v1, v2}, Lr4/hn;->b(Lr4/gn;)V

    iget-object v1, p0, Lr4/nl0;->b:Lb3/b2;

    iget-object v2, p0, Lr4/nl0;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lb3/b2;->e0(Landroid/content/Context;)V

    iget-object v1, p0, Lr4/nl0;->e:Landroid/content/Context;

    iget-object v2, p0, Lr4/nl0;->f:Lr4/im0;

    invoke-static {v1, v2}, Lr4/vf0;->d(Landroid/content/Context;Lr4/im0;)Lr4/xf0;

    invoke-static {}, Lz2/t;->m()Lr4/xz;

    sget-object v1, Lr4/a10;->c:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {v1}, Lb3/w1;->k(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/wz;

    invoke-direct {v1}, Lr4/wz;-><init>()V

    :goto_0
    iput-object v1, p0, Lr4/nl0;->g:Lr4/wz;

    if-eqz v1, :cond_1

    new-instance v1, Lr4/kl0;

    invoke-direct {v1, p0}, Lr4/kl0;-><init>(Lr4/nl0;)V

    invoke-virtual {v1}, Lb3/d0;->c()Lr4/h83;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    invoke-static {v1, v2}, Lr4/tm0;->a(Lr4/h83;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lr4/nl0;->d:Z

    invoke-virtual {p0}, Lr4/nl0;->r()Lr4/h83;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v0

    iget-object p2, p2, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lr4/nl0;->f:Lr4/im0;

    iget-boolean v0, v0, Lr4/im0;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/nl0;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lr4/nl0;->e:Landroid/content/Context;

    invoke-static {v1}, Lr4/gm0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lr4/fm0; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final k(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/nl0;->e:Landroid/content/Context;

    iget-object v1, p0, Lr4/nl0;->f:Lr4/im0;

    invoke-static {v0, v1}, Lr4/vf0;->d(Landroid/content/Context;Lr4/im0;)Lr4/xf0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lr4/xf0;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/nl0;->e:Landroid/content/Context;

    iget-object v1, p0, Lr4/nl0;->f:Lr4/im0;

    invoke-static {v0, v1}, Lr4/vf0;->d(Landroid/content/Context;Lr4/im0;)Lr4/xf0;

    move-result-object v0

    sget-object v1, Lr4/n10;->g:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lr4/xf0;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lr4/nl0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lr4/nl0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lr4/nl0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final p()Lb3/y1;
    .locals 2

    iget-object v0, p0, Lr4/nl0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/nl0;->b:Lb3/b2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lr4/nl0;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final r()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lc4/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/nl0;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lr4/rz;->N1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/nl0;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/nl0;->l:Lr4/h83;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v1, Lr4/qm0;->a:Lr4/i83;

    new-instance v2, Lr4/jl0;

    invoke-direct {v2, p0}, Lr4/jl0;-><init>(Lr4/nl0;)V

    invoke-interface {v1, v2}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v1

    iput-object v1, p0, Lr4/nl0;->l:Lr4/h83;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lr4/rl0;
    .locals 1

    iget-object v0, p0, Lr4/nl0;->c:Lr4/rl0;

    return-object v0
.end method

.method public final synthetic t()Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lr4/nl0;->e:Landroid/content/Context;

    invoke-static {v0}, Lr4/ch0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {v0}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    invoke-virtual {v2, v0, v3}, Ld4/d;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v1
.end method
