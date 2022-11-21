.class Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;
.super Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/sched/PriorityScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrioritySchedulableRecord"
.end annotation


# instance fields
.field public d:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/sched/Schedulable;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;-><init>(Lcom/badlogic/gdx/ai/sched/Schedulable;II)V

    iput p4, p0, Lcom/badlogic/gdx/ai/sched/PriorityScheduler$PrioritySchedulableRecord;->d:F

    return-void
.end method
