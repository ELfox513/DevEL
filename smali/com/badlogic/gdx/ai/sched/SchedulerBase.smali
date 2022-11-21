.class public abstract Lcom/badlogic/gdx/ai/sched/SchedulerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/sched/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/sched/Scheduler;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/utils/IntArray;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->b:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->c:Lcom/badlogic/gdx/utils/IntArray;

    iput p1, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->d:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->c:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-le p1, v1, :cond_0

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->c:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iput p1, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->d:I

    if-ge v2, v3, :cond_4

    rem-int v3, v2, p1

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/badlogic/gdx/ai/sched/SchedulerBase;->a:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;

    iget v6, v5, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->c:I

    sub-int v6, v2, v6

    iget v5, v5, Lcom/badlogic/gdx/ai/sched/SchedulerBase$SchedulableRecord;->b:I

    rem-int/2addr v6, v5

    if-nez v6, :cond_2

    aget v5, v1, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const v2, 0x7fffffff

    const/4 v3, -0x1

    :goto_3
    if-ge v0, p1, :cond_6

    aget v4, v1, v0

    if-ge v4, v2, :cond_5

    move v3, v0

    move v2, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return v3
.end method
