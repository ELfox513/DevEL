.class public final Lj5/w;
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

.field public c:Lj5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/d<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lj5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lj5/d<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj5/w;->b:Ljava/lang/Object;

    iput-object p1, p0, Lj5/w;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lj5/w;->c:Lj5/d;

    return-void
.end method

.method public static synthetic c(Lj5/w;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj5/w;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(Lj5/w;)Lj5/d;
    .locals 0

    iget-object p0, p0, Lj5/w;->c:Lj5/d;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lj5/w;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lj5/w;->c:Lj5/d;

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

    iget-object v0, p0, Lj5/w;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/w;->c:Lj5/d;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj5/w;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lj5/v;

    invoke-direct {v1, p0, p1}, Lj5/v;-><init>(Lj5/w;Lj5/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
