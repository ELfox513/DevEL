.class public final Lj5/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj5/d0<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:Lj5/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lj5/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj5/y;->b:Ljava/lang/Object;

    iput-object p1, p0, Lj5/y;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lj5/y;->c:Lj5/e;

    return-void
.end method

.method public static synthetic c(Lj5/y;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj5/y;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(Lj5/y;)Lj5/e;
    .locals 0

    iget-object p0, p0, Lj5/y;->c:Lj5/e;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lj5/y;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lj5/y;->c:Lj5/e;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lj5/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj5/i;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj5/y;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/y;->c:Lj5/e;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj5/y;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lj5/x;

    invoke-direct {v1, p0, p1}, Lj5/x;-><init>(Lj5/y;Lj5/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
