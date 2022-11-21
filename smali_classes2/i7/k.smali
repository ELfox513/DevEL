.class public Li7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly6/a$b;


# static fields
.field public static final C:Lc7/a;

.field public static final D:Li7/k;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Li7/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Lm5/c;

.field public p:Lx6/c;

.field public q:Lr6/g;

.field public r:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field

.field public s:Li7/b;

.field public t:Ljava/util/concurrent/ExecutorService;

.field public u:Landroid/content/Context;

.field public v:Lz6/a;

.field public w:Li7/d;

.field public x:Ly6/a;

.field public y:Lk7/c$b;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Li7/k;->C:Lc7/a;

    new-instance v0, Li7/k;

    invoke-direct {v0}, Li7/k;-><init>()V

    sput-object v0, Li7/k;->D:Li7/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Li7/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Li7/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Li7/k;->B:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Li7/k;->a:Ljava/util/Map;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Li7/k;Lk7/g;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li7/k;->y(Lk7/g;Lk7/d;)V

    return-void
.end method

.method public static synthetic b(Li7/k;)V
    .locals 0

    invoke-virtual {p0}, Li7/k;->E()V

    return-void
.end method

.method public static synthetic c(Li7/k;Li7/c;)V
    .locals 0

    invoke-direct {p0, p1}, Li7/k;->v(Li7/c;)V

    return-void
.end method

.method public static synthetic d(Li7/k;)V
    .locals 0

    invoke-direct {p0}, Li7/k;->z()V

    return-void
.end method

.method public static synthetic e(Li7/k;Lk7/h;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li7/k;->x(Lk7/h;Lk7/d;)V

    return-void
.end method

.method public static synthetic f(Li7/k;Lk7/m;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li7/k;->w(Lk7/m;Lk7/d;)V

    return-void
.end method

.method public static k()Li7/k;
    .locals 1

    sget-object v0, Li7/k;->D:Li7/k;

    return-object v0
.end method

.method public static l(Lk7/g;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lk7/g;->d0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lk7/g;->a0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lk7/g;->Z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lk7/h;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lk7/h;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk7/h;->q0()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lk7/h;->v0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lk7/h;->k0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "UNKNOWN"

    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lk7/h;->s0()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v2, v4, p0

    const/4 p0, 0x2

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %.4fms)"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lk7/j;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lk7/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lk7/j;->j()Lk7/m;

    move-result-object p0

    invoke-static {p0}, Li7/k;->o(Lk7/m;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lk7/j;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lk7/j;->o()Lk7/h;

    move-result-object p0

    invoke-static {p0}, Li7/k;->m(Lk7/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lk7/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lk7/j;->t()Lk7/g;

    move-result-object p0

    invoke-static {p0}, Li7/k;->l(Lk7/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "log"

    return-object p0
.end method

.method public static o(Lk7/m;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lk7/m;->k0()J

    move-result-wide v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "trace metric: %s (duration: %.4fms)"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private synthetic v(Li7/c;)V
    .locals 1

    iget-object v0, p1, Li7/c;->a:Lk7/i$b;

    iget-object p1, p1, Li7/c;->b:Lk7/d;

    invoke-virtual {p0, v0, p1}, Li7/k;->F(Lk7/i$b;Lk7/d;)V

    return-void
.end method

.method private synthetic w(Lk7/m;Lk7/d;)V
    .locals 1

    invoke-static {}, Lk7/i;->X()Lk7/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk7/i$b;->U(Lk7/m;)Lk7/i$b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li7/k;->F(Lk7/i$b;Lk7/d;)V

    return-void
.end method

.method private synthetic x(Lk7/h;Lk7/d;)V
    .locals 1

    invoke-static {}, Lk7/i;->X()Lk7/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk7/i$b;->T(Lk7/h;)Lk7/i$b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li7/k;->F(Lk7/i$b;Lk7/d;)V

    return-void
.end method

.method private synthetic y(Lk7/g;Lk7/d;)V
    .locals 1

    invoke-static {}, Lk7/i;->X()Lk7/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk7/i$b;->S(Lk7/g;)Lk7/i$b;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li7/k;->F(Lk7/i$b;Lk7/d;)V

    return-void
.end method

.method private synthetic z()V
    .locals 2

    iget-object v0, p0, Li7/k;->w:Li7/d;

    iget-boolean v1, p0, Li7/k;->B:Z

    invoke-virtual {v0, v1}, Li7/d;->a(Z)V

    return-void
.end method


# virtual methods
.method public A(Lk7/g;Lk7/d;)V
    .locals 2

    iget-object v0, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Li7/i;

    invoke-direct {v1, p0, p1, p2}, Li7/i;-><init>(Li7/k;Lk7/g;Lk7/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B(Lk7/h;Lk7/d;)V
    .locals 2

    iget-object v0, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Li7/g;

    invoke-direct {v1, p0, p1, p2}, Li7/g;-><init>(Li7/k;Lk7/h;Lk7/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C(Lk7/m;Lk7/d;)V
    .locals 2

    iget-object v0, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Li7/e;

    invoke-direct {v1, p0, p1, p2}, Li7/e;-><init>(Li7/k;Lk7/m;Lk7/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final D(Lk7/i$b;Lk7/d;)Lk7/i;
    .locals 1

    invoke-virtual {p0}, Li7/k;->G()V

    iget-object v0, p0, Li7/k;->y:Lk7/c$b;

    invoke-virtual {v0, p2}, Lk7/c$b;->V(Lk7/d;)Lk7/c$b;

    move-result-object p2

    invoke-virtual {p1}, Lk7/i$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lo7/y$a;->F()Lo7/y$a;

    move-result-object p2

    check-cast p2, Lk7/c$b;

    invoke-virtual {p0}, Li7/k;->j()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lk7/c$b;->S(Ljava/util/Map;)Lk7/c$b;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Lk7/i$b;->Q(Lk7/c$b;)Lk7/i$b;

    move-result-object p1

    invoke-virtual {p1}, Lo7/y$a;->D()Lo7/y;

    move-result-object p1

    check-cast p1, Lk7/i;

    return-object p1
.end method

.method public final E()V
    .locals 9

    iget-object v0, p0, Li7/k;->k:Lm5/c;

    invoke-virtual {v0}, Lm5/c;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Li7/k;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li7/k;->z:Ljava/lang/String;

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object v0

    iput-object v0, p0, Li7/k;->v:Lz6/a;

    new-instance v0, Li7/d;

    iget-object v1, p0, Li7/k;->u:Landroid/content/Context;

    new-instance v8, Lj7/f;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lj7/f;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v1, v8, v2, v3}, Li7/d;-><init>(Landroid/content/Context;Lj7/f;J)V

    iput-object v0, p0, Li7/k;->w:Li7/d;

    invoke-static {}, Ly6/a;->b()Ly6/a;

    move-result-object v0

    iput-object v0, p0, Li7/k;->x:Ly6/a;

    new-instance v0, Li7/b;

    iget-object v1, p0, Li7/k;->r:Lq6/b;

    iget-object v2, p0, Li7/k;->v:Lz6/a;

    invoke-virtual {v2}, Lz6/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Li7/b;-><init>(Lq6/b;Ljava/lang/String;)V

    iput-object v0, p0, Li7/k;->s:Li7/b;

    invoke-virtual {p0}, Li7/k;->h()V

    return-void
.end method

.method public final F(Lk7/i$b;Lk7/d;)V
    .locals 4

    invoke-virtual {p0}, Li7/k;->u()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Li7/k;->s(Lk7/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Li7/k;->C:Lc7/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    invoke-virtual {v0, v2, v1}, Lc7/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Li7/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Li7/c;

    invoke-direct {v1, p1, p2}, Li7/c;-><init>(Lk7/i$b;Lk7/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Li7/k;->D(Lk7/i$b;Lk7/d;)Lk7/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Li7/k;->t(Lk7/i;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Li7/k;->g(Lk7/i;)V

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->updatePerfSessionIfExpired()Z

    :cond_2
    return-void
.end method

.method public final G()V
    .locals 7

    iget-object v0, p0, Li7/k;->v:Lz6/a;

    invoke-virtual {v0}, Lz6/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Li7/k;->y:Lk7/c$b;

    invoke-virtual {v0}, Lk7/c$b;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li7/k;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Li7/k;->q:Lr6/g;

    invoke-interface {v3}, Lr6/g;->getId()Lj5/i;

    move-result-object v3

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Lj5/l;->a(Lj5/i;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Li7/k;->C:Lc7/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is timed out: %s"

    invoke-virtual {v4, v1, v2}, Lc7/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v4, Li7/k;->C:Lc7/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is interrupted: %s"

    invoke-virtual {v4, v1, v2}, Lc7/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v3

    sget-object v4, Li7/k;->C:Lc7/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unable to retrieve Installation Id: %s"

    invoke-virtual {v4, v1, v2}, Lc7/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Li7/k;->y:Lk7/c$b;

    invoke-virtual {v1, v0}, Lk7/c$b;->U(Ljava/lang/String;)Lk7/c$b;

    goto :goto_1

    :cond_1
    sget-object v0, Li7/k;->C:Lc7/a;

    const-string v1, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    invoke-virtual {v0, v1}, Lc7/a;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final H()V
    .locals 1

    iget-object v0, p0, Li7/k;->p:Lx6/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li7/k;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx6/c;->c()Lx6/c;

    move-result-object v0

    iput-object v0, p0, Li7/k;->p:Lx6/c;

    :cond_0
    return-void
.end method

.method public final g(Lk7/i;)V
    .locals 5

    invoke-virtual {p1}, Lk7/i;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Li7/k;->C:Lc7/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lk7/i;->j()Lk7/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Li7/k;->i(Lk7/m;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Logging %s. In a minute, visit the Firebase console to view your data: %s"

    invoke-virtual {v0, v1, v3}, Lc7/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Li7/k;->C:Lc7/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Logging %s"

    invoke-virtual {v0, v1, v2}, Lc7/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Li7/k;->s:Li7/b;

    invoke-virtual {v0, p1}, Li7/b;->b(Lk7/i;)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Li7/k;->x:Ly6/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Li7/k;->D:Li7/k;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ly6/a;->k(Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lk7/c;->e0()Lk7/c$b;

    move-result-object v0

    iput-object v0, p0, Li7/k;->y:Lk7/c$b;

    iget-object v1, p0, Li7/k;->k:Lm5/c;

    invoke-virtual {v1}, Lm5/c;->k()Lm5/i;

    move-result-object v1

    invoke-virtual {v1}, Lm5/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/c$b;->W(Ljava/lang/String;)Lk7/c$b;

    move-result-object v0

    invoke-static {}, Lk7/a;->X()Lk7/a$b;

    move-result-object v1

    iget-object v2, p0, Li7/k;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lk7/a$b;->Q(Ljava/lang/String;)Lk7/a$b;

    move-result-object v1

    sget-object v2, Lx6/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lk7/a$b;->S(Ljava/lang/String;)Lk7/a$b;

    move-result-object v1

    iget-object v2, p0, Li7/k;->u:Landroid/content/Context;

    invoke-static {v2}, Li7/k;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk7/a$b;->T(Ljava/lang/String;)Lk7/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/c$b;->T(Lk7/a$b;)Lk7/c$b;

    iget-object v0, p0, Li7/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Li7/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li7/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li7/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Li7/j;

    invoke-direct {v2, p0, v0}, Li7/j;-><init>(Li7/k;Li7/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Lk7/m;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lk7/m;->n0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_st_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li7/k;->A:Ljava/lang/String;

    iget-object v1, p0, Li7/k;->z:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lc7/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Li7/k;->A:Ljava/lang/String;

    iget-object v1, p0, Li7/k;->z:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lc7/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Li7/k;->H()V

    iget-object v0, p0, Li7/k;->p:Lx6/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx6/c;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onUpdateAppState(Lk7/d;)V
    .locals 1

    sget-object v0, Lk7/d;->d:Lk7/d;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Li7/k;->B:Z

    invoke-virtual {p0}, Li7/k;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Li7/h;

    invoke-direct {v0, p0}, Li7/h;-><init>(Li7/k;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final q(Lk7/i;)V
    .locals 3

    invoke-virtual {p1}, Lk7/i;->i()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Li7/k;->x:Ly6/a;

    sget-object v0, Lj7/b;->b:Lj7/b;

    invoke-virtual {v0}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Ly6/a;->e(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lk7/i;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Li7/k;->x:Ly6/a;

    sget-object v0, Lj7/b;->d:Lj7/b;

    invoke-virtual {v0}, Lj7/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Ly6/a;->e(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r(Lm5/c;Lr6/g;Lq6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/c;",
            "Lr6/g;",
            "Lq6/b<",
            "Lf2/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li7/k;->k:Lm5/c;

    invoke-virtual {p1}, Lm5/c;->k()Lm5/i;

    move-result-object p1

    invoke-virtual {p1}, Lm5/i;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li7/k;->A:Ljava/lang/String;

    iput-object p2, p0, Li7/k;->q:Lr6/g;

    iput-object p3, p0, Li7/k;->r:Lq6/b;

    iget-object p1, p0, Li7/k;->t:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Li7/f;

    invoke-direct {p2, p0}, Li7/f;-><init>(Li7/k;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Lk7/j;)Z
    .locals 8

    iget-object v0, p0, Li7/k;->a:Ljava/util/Map;

    const-string v1, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Li7/k;->a:Ljava/util/Map;

    const-string v3, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Li7/k;->a:Ljava/util/Map;

    const-string v5, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1}, Lk7/j;->i()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    if-lez v0, :cond_0

    iget-object p1, p0, Li7/k;->a:Ljava/util/Map;

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_0
    invoke-interface {p1}, Lk7/j;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v2, :cond_1

    iget-object p1, p0, Li7/k;->a:Ljava/util/Map;

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_1
    invoke-interface {p1}, Lk7/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v4, :cond_2

    iget-object p1, p0, Li7/k;->a:Ljava/util/Map;

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_2
    sget-object v1, Li7/k;->C:Lc7/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/4 p1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    invoke-virtual {v1, p1, v3}, Lc7/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public final t(Lk7/i;)Z
    .locals 4

    iget-object v0, p0, Li7/k;->v:Lz6/a;

    invoke-virtual {v0}, Lz6/a;->I()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Li7/k;->C:Lc7/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Performance collection is not enabled, dropping %s"

    invoke-virtual {v0, p1, v1}, Lc7/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lk7/i;->V()Lk7/c;

    move-result-object v0

    invoke-virtual {v0}, Lk7/c;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Li7/k;->C:Lc7/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "App Instance ID is null or empty, dropping %s"

    invoke-virtual {v0, p1, v1}, Lc7/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object v0, p0, Li7/k;->u:Landroid/content/Context;

    invoke-static {p1, v0}, Le7/e;->b(Lk7/i;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Li7/k;->C:Lc7/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Li7/k;->n(Lk7/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    invoke-virtual {v0, p1, v1}, Lc7/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v0, p0, Li7/k;->w:Li7/d;

    invoke-virtual {v0, p1}, Li7/d;->b(Lk7/i;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Li7/k;->q(Lk7/i;)V

    invoke-virtual {p1}, Lk7/i;->i()Z

    move-result v0

    const-string v3, "Rate Limited - %s"

    if-eqz v0, :cond_3

    sget-object v0, Li7/k;->C:Lc7/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lk7/i;->j()Lk7/m;

    move-result-object p1

    invoke-static {p1}, Li7/k;->o(Lk7/m;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lc7/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lk7/i;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Li7/k;->C:Lc7/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lk7/i;->o()Lk7/h;

    move-result-object p1

    invoke-static {p1}, Li7/k;->m(Lk7/h;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lc7/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Li7/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
