.class public final Lr4/au2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xt2;


# instance fields
.field public final a:Lr4/xt2;

.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lr4/wt2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lr4/xt2;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/au2;->a:Lr4/xt2;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lr4/au2;->b:Ljava/util/Queue;

    sget-object p1, Lr4/rz;->l6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lr4/au2;->c:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lr4/au2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lr4/rz;->k6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v1, Lr4/zt2;

    invoke-direct {v1, p0}, Lr4/zt2;-><init>(Lr4/au2;)V

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Lr4/wt2;)V
    .locals 4

    iget-object v0, p0, Lr4/au2;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lr4/au2;->c:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lr4/au2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/au2;->b:Ljava/util/Queue;

    const-string v1, "dropped_event"

    invoke-static {v1}, Lr4/wt2;->a(Ljava/lang/String;)Lr4/wt2;

    move-result-object v1

    invoke-virtual {p1}, Lr4/wt2;->j()Ljava/util/Map;

    move-result-object p1

    const-string v2, "action"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "dropped_action"

    invoke-virtual {v1, v2, p1}, Lr4/wt2;->c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lr4/au2;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lr4/wt2;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/au2;->a:Lr4/xt2;

    invoke-interface {v0, p1}, Lr4/xt2;->b(Lr4/wt2;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lr4/au2;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/au2;->a:Lr4/xt2;

    iget-object v1, p0, Lr4/au2;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/wt2;

    invoke-interface {v0, v1}, Lr4/xt2;->a(Lr4/wt2;)V

    goto :goto_0

    :cond_0
    return-void
.end method
