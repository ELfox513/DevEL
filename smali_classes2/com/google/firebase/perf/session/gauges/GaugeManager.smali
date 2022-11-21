.class public Lcom/google/firebase/perf/session/gauges/GaugeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC:J = 0x14L

.field private static final INVALID_GAUGE_COLLECTION_FREQUENCY:J = -0x1L

.field private static final TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS:J = 0x14L

.field private static final instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

.field private static final logger:Lc7/a;


# instance fields
.field private applicationProcessState:Lk7/d;

.field private final configResolver:Lz6/a;

.field private final cpuGaugeCollector:Lh7/c;

.field private gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

.field private final gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private gaugeMetadataManager:Lh7/f;

.field private final memoryGaugeCollector:Lh7/i;

.field private sessionId:Ljava/lang/String;

.field private final transportManager:Li7/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lc7/a;

    new-instance v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v2

    invoke-static {}, Lz6/a;->f()Lz6/a;

    move-result-object v3

    invoke-static {}, Lh7/c;->f()Lh7/c;

    move-result-object v5

    invoke-static {}, Lh7/i;->e()Lh7/i;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/session/gauges/GaugeManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Li7/k;Lz6/a;Lh7/f;Lh7/c;Lh7/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Li7/k;Lz6/a;Lh7/f;Lh7/c;Lh7/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    sget-object v0, Lk7/d;->b:Lk7/d;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lk7/d;

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Li7/k;

    iput-object p3, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lz6/a;

    iput-object p4, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    iput-object p5, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lh7/c;

    iput-object p6, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lh7/i;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->lambda$startCollectingGauges$0(Ljava/lang/String;Lk7/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->lambda$stopCollectingGauges$1(Ljava/lang/String;Lk7/d;)V

    return-void
.end method

.method private static collectGaugeMetricOnce(Lh7/c;Lh7/i;Lj7/h;)V
    .locals 0

    invoke-virtual {p0, p2}, Lh7/c;->c(Lj7/h;)V

    invoke-virtual {p1, p2}, Lh7/i;->c(Lj7/h;)V

    return-void
.end method

.method private getCpuGaugeCollectionFrequencyMs(Lk7/d;)J
    .locals 5

    sget-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lz6/a;

    invoke-virtual {p1}, Lz6/a;->x()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lz6/a;

    invoke-virtual {p1}, Lz6/a;->w()J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Lh7/c;->g(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-wide v1

    :cond_2
    return-wide v3
.end method

.method private getGaugeMetadata()Lk7/f;
    .locals 2

    invoke-static {}, Lk7/f;->X()Lk7/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    invoke-virtual {v1}, Lh7/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk7/f$b;->U(Ljava/lang/String;)Lk7/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    invoke-virtual {v1}, Lh7/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lk7/f$b;->Q(I)Lk7/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    invoke-virtual {v1}, Lh7/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lk7/f$b;->S(I)Lk7/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    invoke-virtual {v1}, Lh7/f;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lk7/f$b;->T(I)Lk7/f$b;

    move-result-object v0

    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/f;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/session/gauges/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->instance:Lcom/google/firebase/perf/session/gauges/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMemoryGaugeCollectionFrequencyMs(Lk7/d;)J
    .locals 5

    sget-object v0, Lcom/google/firebase/perf/session/gauges/GaugeManager$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lz6/a;

    invoke-virtual {p1}, Lz6/a;->A()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->configResolver:Lz6/a;

    invoke-virtual {p1}, Lz6/a;->z()J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Lh7/i;->f(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-wide v1

    :cond_2
    return-wide v3
.end method

.method private synthetic lambda$startCollectingGauges$0(Ljava/lang/String;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Lk7/d;)V

    return-void
.end method

.method private synthetic lambda$stopCollectingGauges$1(Ljava/lang/String;Lk7/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->syncFlush(Ljava/lang/String;Lk7/d;)V

    return-void
.end method

.method private startCollectingCpuMetrics(JLj7/h;)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lc7/a;

    const-string p2, "Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics."

    invoke-virtual {p1, p2}, Lc7/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lh7/c;

    invoke-virtual {v0, p1, p2, p3}, Lh7/c;->l(JLj7/h;)V

    const/4 p1, 0x1

    return p1
.end method

.method private startCollectingGauges(Lk7/d;Lj7/h;)J
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getCpuGaugeCollectionFrequencyMs(Lk7/d;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingCpuMetrics(JLj7/h;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getMemoryGaugeCollectionFrequencyMs(Lk7/d;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6, p2}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingMemoryMetrics(JLj7/h;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    move-wide v0, v5

    goto :goto_1

    :cond_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v0, p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private startCollectingMemoryMetrics(JLj7/h;)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lc7/a;

    const-string p2, "Invalid Memory Metrics collection frequency. Did not collect Memory Metrics."

    invoke-virtual {p1, p2}, Lc7/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lh7/i;

    invoke-virtual {v0, p1, p2, p3}, Lh7/i;->k(JLj7/h;)V

    const/4 p1, 0x1

    return p1
.end method

.method private syncFlush(Ljava/lang/String;Lk7/d;)V
    .locals 2

    invoke-static {}, Lk7/g;->f0()Lk7/g$b;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lh7/c;

    iget-object v1, v1, Lh7/c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lh7/c;

    iget-object v1, v1, Lh7/c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/e;

    invoke-virtual {v0, v1}, Lk7/g$b;->S(Lk7/e;)Lk7/g$b;

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lh7/i;

    iget-object v1, v1, Lh7/i;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lh7/i;

    iget-object v1, v1, Lh7/i;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/b;

    invoke-virtual {v0, v1}, Lk7/g$b;->Q(Lk7/b;)Lk7/g$b;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lk7/g$b;->U(Ljava/lang/String;)Lk7/g$b;

    iget-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Li7/k;

    invoke-virtual {v0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    check-cast v0, Lk7/g;

    invoke-virtual {p1, v0, p2}, Li7/k;->A(Lk7/g;Lk7/d;)V

    return-void
.end method


# virtual methods
.method public collectGaugeMetricOnce(Lj7/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lh7/c;

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lh7/i;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->collectGaugeMetricOnce(Lh7/c;Lh7/i;Lj7/h;)V

    return-void
.end method

.method public logGaugeMetadata(Ljava/lang/String;Lk7/d;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lk7/g;->f0()Lk7/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk7/g$b;->U(Ljava/lang/String;)Lk7/g$b;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->getGaugeMetadata()Lk7/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk7/g$b;->T(Lk7/f;)Lk7/g$b;

    move-result-object p1

    invoke-virtual {p1}, Lo7/y$a;->D()Lo7/y;

    move-result-object p1

    check-cast p1, Lk7/g;

    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->transportManager:Li7/k;

    invoke-virtual {v0, p1, p2}, Li7/k;->A(Lk7/g;Lk7/d;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lh7/f;

    invoke-direct {v0, p1}, Lh7/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeMetadataManager:Lh7/f;

    return-void
.end method

.method public startCollectingGauges(Lg7/a;Lk7/d;)V
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->stopCollectingGauges()V

    :cond_0
    invoke-virtual {p1}, Lg7/a;->l()Lj7/h;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->startCollectingGauges(Lk7/d;Lj7/h;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-object p1, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lc7/a;

    const-string p2, "Invalid gauge collection frequency. Unable to start collecting Gauges."

    invoke-virtual {p1, p2}, Lc7/a;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lg7/a;->v()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lk7/d;

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lh7/e;

    invoke-direct {v3, p0, p1, p2}, Lh7/e;-><init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lk7/d;)V

    const-wide/16 p1, 0x14

    mul-long v6, v0, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v6

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/firebase/perf/session/gauges/GaugeManager;->logger:Lc7/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start collecting Gauges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc7/a;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCollectingGauges()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lk7/d;

    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->cpuGaugeCollector:Lh7/c;

    invoke-virtual {v2}, Lh7/c;->m()V

    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->memoryGaugeCollector:Lh7/i;

    invoke-virtual {v2}, Lh7/i;->l()V

    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lh7/d;

    invoke-direct {v3, p0, v0, v1}, Lh7/d;-><init>(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lk7/d;)V

    const-wide/16 v0, 0x14

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->sessionId:Ljava/lang/String;

    sget-object v0, Lk7/d;->b:Lk7/d;

    iput-object v0, p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;->applicationProcessState:Lk7/d;

    return-void
.end method
