.class public Lcom/badlogic/gdx/ai/sched/LoadBalancingScheduler;
.super Lcom/badlogic/gdx/ai/sched/SchedulerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/ai/sched/SchedulerBase<",
        "Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/sched/SchedulerBase;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/sched/LoadBalancingScheduler;->e:I

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/ai/sched/Schedulable;II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;

    invoke-direct {v1, p1, p2, p3}, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;-><init>(Lcom/badlogic/gdx/ai/sched/Schedulable;II)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addWithAutomaticPhasing(Lcom/badlogic/gdx/ai/sched/Schedulable;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/sched/LoadBalancingScheduler;->add(Lcom/badlogic/gdx/ai/sched/Schedulable;II)V

    return-void
.end method

.method public run(J)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/ai/sched/LoadBalancingScheduler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/ai/sched/LoadBalancingScheduler;->e:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;

    iget v3, p0, Lcom/badlogic/gdx/ai/sched/LoadBalancingScheduler;->e:I

    iget v4, v2, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->c:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->b:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sub-long/2addr p1, v2

    sub-int v2, v0, v1

    int-to-long v2, v2

    div-long v2, p1, v2

    iget-object v6, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;

    iget-object v6, v6, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->a:Lcom/badlogic/gdx/ai/sched/Schedulable;

    invoke-interface {v6, v2, v3}, Lcom/badlogic/gdx/ai/sched/Schedulable;->run(J)V

    add-int/lit8 v1, v1, 0x1

    move-wide v2, v4

    goto :goto_1

    :cond_2
    return-void
.end method
