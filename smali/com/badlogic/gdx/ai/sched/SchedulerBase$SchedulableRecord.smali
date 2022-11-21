.class public Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/sched/SchedulerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedulableRecord"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/sched/Schedulable;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/sched/Schedulable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->a:Lcom/badlogic/gdx/ai/sched/Schedulable;

    iput p2, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->b:I

    iput p3, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->c:I

    return-void
.end method
