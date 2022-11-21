.class public final Lr4/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/so;

.field public b:Z

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/dp;->d:Ljava/lang/Object;

    iput-object p1, p0, Lr4/dp;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lr4/dp;)Lr4/so;
    .locals 0

    iget-object p0, p0, Lr4/dp;->a:Lr4/so;

    return-object p0
.end method

.method public static synthetic b(Lr4/dp;)Z
    .locals 0

    iget-boolean p0, p0, Lr4/dp;->b:Z

    return p0
.end method

.method public static synthetic c(Lr4/dp;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/dp;->b:Z

    return p1
.end method

.method public static synthetic d(Lr4/dp;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr4/dp;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic f(Lr4/dp;)V
    .locals 2

    iget-object v0, p0, Lr4/dp;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/dp;->a:Lr4/so;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lx3/c;->e()V

    const/4 v1, 0x0

    iput-object v1, p0, Lr4/dp;->a:Lr4/so;

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


# virtual methods
.method public final e(Lr4/to;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/to;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lr4/fp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/xo;

    invoke-direct {v0, p0}, Lr4/xo;-><init>(Lr4/dp;)V

    new-instance v1, Lr4/bp;

    invoke-direct {v1, p0, p1, v0}, Lr4/bp;-><init>(Lr4/dp;Lr4/to;Lr4/vm0;)V

    new-instance p1, Lr4/cp;

    invoke-direct {p1, p0, v0}, Lr4/cp;-><init>(Lr4/dp;Lr4/vm0;)V

    iget-object v2, p0, Lr4/dp;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lr4/so;

    iget-object v4, p0, Lr4/dp;->c:Landroid/content/Context;

    invoke-static {}, Lz2/t;->r()Lb3/c1;

    move-result-object v5

    invoke-virtual {v5}, Lb3/c1;->a()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, p1}, Lr4/so;-><init>(Landroid/content/Context;Landroid/os/Looper;Lx3/c$a;Lx3/c$b;)V

    iput-object v3, p0, Lr4/dp;->a:Lr4/so;

    invoke-virtual {v3}, Lx3/c;->p()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
