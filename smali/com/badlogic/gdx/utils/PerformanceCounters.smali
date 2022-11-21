.class public Lcom/badlogic/gdx/utils/PerformanceCounters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final counters:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/PerformanceCounter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->a:J

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/badlogic/gdx/utils/PerformanceCounter;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/PerformanceCounter;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/badlogic/gdx/utils/PerformanceCounter;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/utils/PerformanceCounter;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0
.end method

.method public tick()V
    .locals 7

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/PerformanceCounters;->tick(F)V

    :cond_0
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->a:J

    return-void
.end method

.method public tick(F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/PerformanceCounter;->tick(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "; "

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/PerformanceCounters;->counters:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/PerformanceCounter;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/PerformanceCounter;->toString(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
