.class public Lcom/esotericsoftware/kryonet/Listener$LagListener;
.super Lcom/esotericsoftware/kryonet/Listener$QueuedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LagListener"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/esotericsoftware/kryonet/Listener;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/esotericsoftware/kryonet/Listener$QueuedListener;-><init>(Lcom/esotericsoftware/kryonet/Listener;)V

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->e:Ljava/util/LinkedList;

    iput p1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->c:I

    iput p2, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->d:I

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public queue(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->e:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->c:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->d:I

    iget v3, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->c:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;

    invoke-direct {v1, p0}, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;-><init>(Lcom/esotericsoftware/kryonet/Listener$LagListener;)V

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
