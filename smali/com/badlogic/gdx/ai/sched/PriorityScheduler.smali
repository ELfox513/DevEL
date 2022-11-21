.class public Lcom/badlogic/gdx/ai/sched/PriorityScheduler;
.super Lcom/badlogic/gdx/ai/sched/SchedulerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/ai/sched/SchedulerBase<",
        "Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;",
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

    iput p1, p0, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->e:I

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/ai/sched/Schedulable;II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->add(Lcom/badlogic/gdx/ai/sched/Schedulable;IIF)V

    return-void
.end method

.method public add(Lcom/badlogic/gdx/ai/sched/Schedulable;IIF)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;-><init>(Lcom/badlogic/gdx/ai/sched/Schedulable;IIF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addWithAutomaticPhasing(Lcom/badlogic/gdx/ai/sched/Schedulable;I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->addWithAutomaticPhasing(Lcom/badlogic/gdx/ai/sched/Schedulable;IF)V

    return-void
.end method

.method public addWithAutomaticPhasing(Lcom/badlogic/gdx/ai/sched/Schedulable;IF)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->add(Lcom/badlogic/gdx/ai/sched/Schedulable;IIF)V

    return-void
.end method

.method public run(J)V
    .locals 9

    iget v0, p0, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->e:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;

    iget v4, p0, Lcom/badlogic/gdx/ai/sched/PriorityScheduler;->e:I

    iget v5, v3, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->c:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->b:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget v3, v3, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;->d:F

    add-float/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v5

    sub-long v2, v5, v2

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;

    long-to-float v3, p1

    iget v7, v2, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;->d:F

    mul-float v3, v3, v7

    div-float/2addr v3, v0

    float-to-long v7, v3

    iget-object v2, v2, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->a:Lcom/badlogic/gdx/ai/sched/Schedulable;

    invoke-interface {v2, v7, v8}, Lcom/badlogic/gdx/ai/sched/Schedulable;->run(J)V

    add-int/lit8 v1, v1, 0x1

    move-wide v2, v5

    goto :goto_1

    :cond_2
    return-void
.end method
