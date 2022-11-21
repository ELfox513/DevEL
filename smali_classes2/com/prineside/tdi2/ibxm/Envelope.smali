.class public Lcom/prineside/tdi2/ibxm/Envelope;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public loopEndTick:I

.field public loopStartTick:I

.field public looped:Z

.field public numPoints:I

.field public pointsAmpl:[I

.field public pointsTick:[I

.field public sustain:Z

.field public sustainTick:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Envelope;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    iget-boolean v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    iget-boolean v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    iget-boolean v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    iget v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    iget-object v2, p1, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    array-length v3, v1

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    iget-object p1, p1, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public calculateAmpl(I)I
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    iget v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v2, v1

    if-ge p1, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    if-ge v3, v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    aget v1, v1, v3

    if-gt v1, p1, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    aget v1, v1, v0

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    aget v2, v4, v2

    aget v0, v4, v0

    sub-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x18

    div-int/2addr v2, v3

    sub-int/2addr p1, v1

    mul-int v2, v2, p1

    shr-int/lit8 p1, v2, 0x18

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public nextTick(IZ)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    if-lt p1, p2, :cond_1

    move p1, p2

    :cond_1
    return p1
.end method

.method public toStringBuffer(Ljava/lang/StringBuffer;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sustain: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sustain Tick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loop Start Tick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loop End Tick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num Points: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Points: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
