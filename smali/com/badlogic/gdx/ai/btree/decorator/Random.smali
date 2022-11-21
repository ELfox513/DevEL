.class public Lcom/badlogic/gdx/ai/btree/decorator/Random;
.super Lcom/badlogic/gdx/ai/btree/Decorator;
.source "SourceFile"


# annotations
.annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskConstraint;
    maxChildren = 0x1
    minChildren = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/Decorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public q:F

.field public success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO_POINT_FIVE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/ai/btree/decorator/Random;-><init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO_POINT_FIVE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/ai/btree/decorator/Random;-><init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

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

    check-cast v0, Lcom/badlogic/gdx/ai/btree/decorator/Random;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;->c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

    return-object p1
.end method

.method public childFail(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/decorator/Random;->d()V

    return-void
.end method

.method public childSuccess(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/decorator/Random;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->q:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->success()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->q:F

    sget-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO_POINT_FIVE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;->reset()V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/Decorator;->p:Lcom/badlogic/gdx/ai/btree/Task;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/decorator/Random;->d()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->success:Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/random/Distribution;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/Random;->q:F

    return-void
.end method
