.class public abstract Ll0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/c$e;,
        Ll0/c$h;,
        Ll0/c$f;,
        Ll0/c$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final q:Ljava/util/concurrent/ThreadFactory;

.field public static final r:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ljava/util/concurrent/Executor;

.field public static t:Ll0/c$f;

.field public static volatile u:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ll0/c$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/c$h<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public volatile d:Ll0/c$g;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v7, Ll0/c$a;

    invoke-direct {v7}, Ll0/c$a;-><init>()V

    sput-object v7, Ll0/c;->q:Ljava/util/concurrent/ThreadFactory;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Ll0/c;->r:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Ll0/c;->s:Ljava/util/concurrent/Executor;

    sput-object v8, Ll0/c;->u:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ll0/c$g;->a:Ll0/c$g;

    iput-object v0, p0, Ll0/c;->d:Ll0/c$g;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ll0/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ll0/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ll0/c$b;

    invoke-direct {v0, p0}, Ll0/c$b;-><init>(Ll0/c;)V

    iput-object v0, p0, Ll0/c;->a:Ll0/c$h;

    new-instance v1, Ll0/c$c;

    invoke-direct {v1, p0, v0}, Ll0/c$c;-><init>(Ll0/c;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Ll0/c;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public static e()Landroid/os/Handler;
    .locals 2

    const-class v0, Ll0/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ll0/c;->t:Ll0/c$f;

    if-nez v1, :cond_0

    new-instance v1, Ll0/c$f;

    invoke-direct {v1}, Ll0/c$f;-><init>()V

    sput-object v1, Ll0/c;->t:Ll0/c$f;

    :cond_0
    sget-object v1, Ll0/c;->t:Ll0/c$f;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Z)Z
    .locals 2

    iget-object v0, p0, Ll0/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ll0/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public varargs abstract b([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs c(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Ll0/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Ll0/c<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Ll0/c;->d:Ll0/c$g;

    sget-object v1, Ll0/c$g;->a:Ll0/c$g;

    if-eq v0, v1, :cond_2

    sget-object p1, Ll0/c$d;->a:[I

    iget-object p2, p0, Ll0/c;->d:Ll0/c$g;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We should never reach this state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object v0, Ll0/c$g;->b:Ll0/c$g;

    iput-object v0, p0, Ll0/c;->d:Ll0/c$g;

    invoke-virtual {p0}, Ll0/c;->j()V

    iget-object v0, p0, Ll0/c;->a:Ll0/c$h;

    iput-object p2, v0, Ll0/c$h;->a:[Ljava/lang/Object;

    iget-object p2, p0, Ll0/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ll0/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ll0/c;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ll0/c;->i(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Ll0/c$g;->d:Ll0/c$g;

    iput-object p1, p0, Ll0/c;->d:Ll0/c$g;

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Ll0/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ll0/c;->g()V

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public varargs k([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    invoke-static {}, Ll0/c;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ll0/c$e;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Ll0/c$e;-><init>(Ll0/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public m(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Ll0/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ll0/c;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
