.class public final Lr4/qm0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/i83;

.field public static final b:Lr4/i83;

.field public static final c:Lr4/i83;

.field public static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final e:Lr4/i83;

.field public static final f:Lr4/i83;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    invoke-static {}, Lc4/e;->a()Z

    move-result v0

    const-string v1, "Default"

    if-eqz v0, :cond_0

    invoke-static {}, Lr4/a03;->a()Lr4/xz2;

    new-instance v0, Lr4/mm0;

    invoke-direct {v0, v1}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lr4/mm0;

    invoke-direct {v8, v1}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    :goto_0
    new-instance v1, Lr4/om0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lr4/om0;-><init>(Ljava/util/concurrent/Executor;Lr4/pm0;)V

    sput-object v1, Lr4/qm0;->a:Lr4/i83;

    invoke-static {}, Lc4/e;->a()Z

    move-result v0

    const-string v1, "Loader"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lr4/a03;->a()Lr4/xz2;

    move-result-object v0

    new-instance v4, Lr4/mm0;

    invoke-direct {v4, v1}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-interface {v0, v1, v4, v3}, Lr4/xz2;->a(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lr4/mm0;

    invoke-direct {v11, v1}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-wide/16 v7, 0xa

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :goto_1
    new-instance v1, Lr4/om0;

    invoke-direct {v1, v0, v2}, Lr4/om0;-><init>(Ljava/util/concurrent/Executor;Lr4/pm0;)V

    sput-object v1, Lr4/qm0;->b:Lr4/i83;

    invoke-static {}, Lc4/e;->a()Z

    move-result v0

    const-string v1, "Activeview"

    if-eqz v0, :cond_2

    invoke-static {}, Lr4/a03;->a()Lr4/xz2;

    move-result-object v0

    new-instance v4, Lr4/mm0;

    invoke-direct {v4, v1}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v3}, Lr4/xz2;->b(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lr4/mm0;

    invoke-direct {v11, v1}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :goto_2
    new-instance v1, Lr4/om0;

    invoke-direct {v1, v0, v2}, Lr4/om0;-><init>(Ljava/util/concurrent/Executor;Lr4/pm0;)V

    sput-object v1, Lr4/qm0;->c:Lr4/i83;

    new-instance v0, Lr4/lm0;

    new-instance v1, Lr4/mm0;

    const-string v3, "Schedule"

    invoke-direct {v1, v3}, Lr4/mm0;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1}, Lr4/lm0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lr4/qm0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lr4/nm0;

    invoke-direct {v0}, Lr4/nm0;-><init>()V

    new-instance v1, Lr4/om0;

    invoke-direct {v1, v0, v2}, Lr4/om0;-><init>(Ljava/util/concurrent/Executor;Lr4/pm0;)V

    sput-object v1, Lr4/qm0;->e:Lr4/i83;

    invoke-static {}, Lr4/o83;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lr4/om0;

    invoke-direct {v1, v0, v2}, Lr4/om0;-><init>(Ljava/util/concurrent/Executor;Lr4/pm0;)V

    sput-object v1, Lr4/qm0;->f:Lr4/i83;

    return-void
.end method
