.class public Lcom/badlogic/gdx/math/FloatCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field public average:F

.field public count:I

.field public latest:F

.field public max:F

.field public final mean:Lcom/badlogic/gdx/math/WindowedMean;

.field public min:F

.field public total:F

.field public value:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/WindowedMean;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/FloatCounter;->reset()V

    return-void
.end method


# virtual methods
.method public put(F)V
    .locals 2

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    iget-object p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/WindowedMean;->getMean()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/WindowedMean;->hasEnoughData()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iput p1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    const v1, -0x800001

    iput v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    iput v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    iget-object v0, p0, Lcom/badlogic/gdx/math/FloatCounter;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/WindowedMean;->clear()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FloatCounter{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->total:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", latest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->latest:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/FloatCounter;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
