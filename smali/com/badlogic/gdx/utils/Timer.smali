.class public Lcom/badlogic/gdx/utils/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Timer$TimerThread;,
        Lcom/badlogic/gdx/utils/Timer$Task;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;

.field public static c:Lcom/badlogic/gdx/utils/Timer$TimerThread;


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Timer$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Timer;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer;->start()V

    return-void
.end method

.method public static a()Lcom/badlogic/gdx/utils/Timer$TimerThread;
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->c:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->a:Lcom/badlogic/gdx/Files;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v2, v3, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;->dispose()V

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Timer$TimerThread;-><init>()V

    sput-object v1, Lcom/badlogic/gdx/utils/Timer;->c:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    :cond_2
    sget-object v1, Lcom/badlogic/gdx/utils/Timer;->c:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Timer;
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->a()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->k:Lcom/badlogic/gdx/utils/Timer;

    if-nez v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/utils/Timer;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Timer;-><init>()V

    iput-object v2, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->k:Lcom/badlogic/gdx/utils/Timer;

    :cond_0
    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->k:Lcom/badlogic/gdx/utils/Timer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static post(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Timer;->postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method

.method public static schedule(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->instance()Lcom/badlogic/gdx/utils/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized b(JJ)J
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->b:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    sub-long/2addr v3, p1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    monitor-exit v2

    goto :goto_2

    :cond_0
    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->k:I

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->p:Lcom/badlogic/gdx/utils/Timer;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->d:J

    add-long v5, p1, v3

    iput-wide v5, v2, Lcom/badlogic/gdx/utils/Timer$Task;->b:J

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->k:I

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->k:I

    :cond_2
    :goto_1
    iget-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->a:Lcom/badlogic/gdx/Application;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    monitor-exit v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit p0

    return-wide p3

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized clear()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    :try_start_1
    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->b:J

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->p:Lcom/badlogic/gdx/utils/Timer;

    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized delay(J)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Timer$Task;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->b:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/badlogic/gdx/utils/Timer$Task;->b:J

    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public postTask(Lcom/badlogic/gdx/utils/Timer$Task;)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/Timer;->scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;

    move-result-object p1

    return-object p1
.end method

.method public scheduleTask(Lcom/badlogic/gdx/utils/Timer$Task;FFI)Lcom/badlogic/gdx/utils/Timer$Task;
    .locals 10

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Timer$Task;->p:Lcom/badlogic/gdx/utils/Timer;

    if-nez v1, :cond_1

    iput-object p0, p1, Lcom/badlogic/gdx/utils/Timer$Task;->p:Lcom/badlogic/gdx/utils/Timer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float p2, p2, v3

    float-to-long v4, p2

    add-long/2addr v4, v1

    sget-object p2, Lcom/badlogic/gdx/utils/Timer;->c:Lcom/badlogic/gdx/utils/Timer$TimerThread;

    iget-wide v6, p2, Lcom/badlogic/gdx/utils/Timer$TimerThread;->p:J

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-lez p2, :cond_0

    sub-long/2addr v1, v6

    sub-long/2addr v4, v1

    :cond_0
    iput-wide v4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->b:J

    mul-float p3, p3, v3

    float-to-long p2, p3

    iput-wide p2, p1, Lcom/badlogic/gdx/utils/Timer$Task;->d:J

    iput p4, p1, Lcom/badlogic/gdx/utils/Timer$Task;->k:I

    iget-object p2, p0, Lcom/badlogic/gdx/utils/Timer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p1

    :cond_1
    :try_start_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "The same task may not be scheduled twice."

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public start()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->a()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/utils/Timer;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/utils/Timer;->a()Lcom/badlogic/gdx/utils/Timer$TimerThread;

    move-result-object v1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Timer$TimerThread;->d:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
