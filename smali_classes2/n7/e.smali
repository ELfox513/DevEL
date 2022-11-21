.class public Ln7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln7/e$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ln7/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ln7/l;

.field public c:Lj5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ln7/e;->d:Ljava/util/Map;

    new-instance v0, Ln7/b;

    invoke-direct {v0}, Ln7/b;-><init>()V

    sput-object v0, Ln7/e;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ln7/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/e;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Ln7/e;->b:Ln7/l;

    const/4 p1, 0x0

    iput-object p1, p0, Ln7/e;->c:Lj5/i;

    return-void
.end method

.method public static synthetic a(Ln7/e;Lcom/google/firebase/remoteconfig/internal/a;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Ln7/e;->i(Lcom/google/firebase/remoteconfig/internal/a;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ln7/e;ZLcom/google/firebase/remoteconfig/internal/a;Ljava/lang/Void;)Lj5/i;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ln7/e;->j(ZLcom/google/firebase/remoteconfig/internal/a;Ljava/lang/Void;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lj5/i;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    new-instance v0, Ln7/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln7/e$b;-><init>(Ln7/e$a;)V

    sget-object v1, Ln7/e;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lj5/i;->f(Ljava/util/concurrent/Executor;Lj5/f;)Lj5/i;

    invoke-virtual {p0, v1, v0}, Lj5/i;->e(Ljava/util/concurrent/Executor;Lj5/e;)Lj5/i;

    invoke-virtual {p0, v1, v0}, Lj5/i;->a(Ljava/util/concurrent/Executor;Lj5/c;)Lj5/i;

    invoke-virtual {v0, p1, p2, p3}, Ln7/e$b;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lj5/i;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Task await timed out."

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized h(Ljava/util/concurrent/ExecutorService;Ln7/l;)Ln7/e;
    .locals 4

    const-class v0, Ln7/e;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ln7/l;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ln7/e;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ln7/e;

    invoke-direct {v3, p0, p1}, Ln7/e;-><init>(Ljava/util/concurrent/ExecutorService;Ln7/l;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln7/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic i(Lcom/google/firebase/remoteconfig/internal/a;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Ln7/e;->b:Ln7/l;

    invoke-virtual {v0, p1}, Ln7/l;->e(Lcom/google/firebase/remoteconfig/internal/a;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j(ZLcom/google/firebase/remoteconfig/internal/a;Ljava/lang/Void;)Lj5/i;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ln7/e;->m(Lcom/google/firebase/remoteconfig/internal/a;)V

    :cond_0
    invoke-static {p2}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object v0

    iput-object v0, p0, Ln7/e;->c:Lj5/i;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ln7/e;->b:Ln7/l;

    invoke-virtual {v0}, Ln7/l;->a()Ljava/lang/Void;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln7/e;->c:Lj5/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj5/i;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln7/e;->c:Lj5/i;

    invoke-virtual {v0}, Lj5/i;->p()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ln7/e;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Ln7/e;->b:Ln7/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ln7/a;

    invoke-direct {v2, v1}, Ln7/a;-><init>(Ln7/l;)V

    invoke-static {v0, v2}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object v0

    iput-object v0, p0, Ln7/e;->c:Lj5/i;

    :cond_1
    iget-object v0, p0, Ln7/e;->c:Lj5/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lcom/google/firebase/remoteconfig/internal/a;
    .locals 2

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ln7/e;->g(J)Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public g(J)Lcom/google/firebase/remoteconfig/internal/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln7/e;->c:Lj5/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ln7/e;->c:Lj5/i;

    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a;

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ln7/e;->e()Lj5/i;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p1, p2, v1}, Ln7/e;->c(Lj5/i;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string p2, "FirebaseRemoteConfig"

    const-string v0, "Reading from storage file failed."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public k(Lcom/google/firebase/remoteconfig/internal/a;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ")",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ln7/e;->l(Lcom/google/firebase/remoteconfig/internal/a;Z)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/google/firebase/remoteconfig/internal/a;Z)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            "Z)",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln7/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ln7/c;

    invoke-direct {v1, p0, p1}, Ln7/c;-><init>(Ln7/e;Lcom/google/firebase/remoteconfig/internal/a;)V

    invoke-static {v0, v1}, Lj5/l;->b(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;

    move-result-object v0

    iget-object v1, p0, Ln7/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ln7/d;

    invoke-direct {v2, p0, p2, p1}, Ln7/d;-><init>(Ln7/e;ZLcom/google/firebase/remoteconfig/internal/a;)V

    invoke-virtual {v0, v1, v2}, Lj5/i;->r(Ljava/util/concurrent/Executor;Lj5/h;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized m(Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    iput-object p1, p0, Ln7/e;->c:Lj5/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
