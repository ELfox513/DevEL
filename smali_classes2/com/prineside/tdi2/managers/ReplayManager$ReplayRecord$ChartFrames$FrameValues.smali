.class public Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameValues"
.end annotation


# instance fields
.field public cBounties:I

.field public cKilledEnemies:I

.field public cOther:I

.field public cWaveCalls:I

.field public mdps:F

.field public sKilledEnemies:J

.field public sMining:J

.field public sWaveCalls:J

.field public sWavesCleared:J

.field public wave:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;-><init>()V

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->wave:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->wave:I

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->mdps:F

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->mdps:F

    return-object v0
.end method

.method public read(Lcom/prineside/kryo/FixedInput;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarLong(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarLong(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarLong(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarLong(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->wave:I

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedInput;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->mdps:F

    return-void
.end method

.method public write(Lcom/prineside/kryo/FixedOutput;)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    invoke-virtual {p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    invoke-virtual {p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    invoke-virtual {p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    invoke-virtual {p1, v2, v3, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarLong(JZ)I

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    invoke-virtual {p1, v2, v3, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarLong(JZ)I

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    invoke-virtual {p1, v2, v3, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarLong(JZ)I

    iget-wide v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    invoke-virtual {p1, v2, v3, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarLong(JZ)I

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->wave:I

    invoke-virtual {p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->mdps:F

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedOutput;->writeFloat(F)V

    return-void
.end method
