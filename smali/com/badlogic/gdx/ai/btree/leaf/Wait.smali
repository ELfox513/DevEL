.class public Lcom/badlogic/gdx/ai/btree/leaf/Wait;
.super Lcom/badlogic/gdx/ai/btree/LeafTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/LeafTask<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public p:F

.field public q:F

.field public seconds:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
        required = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/leaf/Wait;-><init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/leaf/Wait;-><init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/LeafTask;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->seconds:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->seconds:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->seconds:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    return-object p1
.end method

.method public execute()Lcom/badlogic/gdx/ai/btree/Task$Status;
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->p:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->q:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->RUNNING:Lcom/badlogic/gdx/ai/btree/Task$Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/ai/btree/Task$Status;->SUCCEEDED:Lcom/badlogic/gdx/ai/btree/Task$Status;

    :goto_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->seconds:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->p:F

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->q:F

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->reset()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->seconds:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->q:F

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getTimepiece()Lcom/badlogic/gdx/ai/Timepiece;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/Timepiece;->getTime()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/leaf/Wait;->p:F

    return-void
.end method
