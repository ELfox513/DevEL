.class public Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChartFrames"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;
    }
.end annotation


# static fields
.field public static final a:Lcom/prineside/kryo/FixedOutput;

.field public static final b:Lcom/prineside/kryo/FixedOutput;

.field public static final d:Lcom/prineside/kryo/FixedInput;

.field public static final frameValuesHelper:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

.field public static final k:Lcom/prineside/kryo/FixedInput;


# instance fields
.field public frames:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frameValuesHelper:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    new-instance v0, Lcom/prineside/kryo/FixedOutput;

    const/16 v1, 0x1000

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->a:Lcom/prineside/kryo/FixedOutput;

    new-instance v0, Lcom/prineside/kryo/FixedOutput;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v2}, Lcom/prineside/kryo/FixedOutput;-><init>(II)V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->b:Lcom/prineside/kryo/FixedOutput;

    new-instance v0, Lcom/prineside/kryo/FixedInput;

    invoke-direct {v0}, Lcom/prineside/kryo/FixedInput;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->d:Lcom/prineside/kryo/FixedInput;

    new-instance v0, Lcom/prineside/kryo/FixedInput;

    invoke-direct {v0}, Lcom/prineside/kryo/FixedInput;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->k:Lcom/prineside/kryo/FixedInput;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static fromBytes(Lcom/prineside/kryo/FixedInput;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->read(Lcom/prineside/kryo/FixedInput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ReplayManager"

    const-string v1, "failed to load chart frames, fallback"

    invoke-static {v0, v1, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static generateFrameValues(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frameValuesHelper:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_B:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cBounties:I

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cKilledEnemies:I

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_WC:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cWaveCalls:I

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_PG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-int v2, v2

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->CG_U:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cOther:I

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sKilledEnemies:J

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_RM:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sMining:J

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCA:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWaveCalls:J

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    double-to-long v2, v2

    iput-wide v2, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->sWavesCleared:J

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/prineside/tdi2/Wave;->waveNumber:I

    :goto_0
    iput v0, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->wave:I

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v2

    double-to-float p0, v2

    iput p0, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->mdps:F

    return-object v1
.end method


# virtual methods
.method public addFrame(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->generateFrameValues(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cpy()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public cpy()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;-><init>()V

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    iput v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->cpy()Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes(I)[B

    move-result-object p1

    sget-object p2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->k:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {p2, p1}, Lcom/prineside/kryo/FixedInput;->setBuffer([B)V

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->read(Lcom/prineside/kryo/FixedInput;)V

    return-void
.end method

.method public read(Lcom/prineside/kryo/FixedInput;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    invoke-virtual {p1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/prineside/kryo/FixedInput;->readBytes(I)[B

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->d:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v1, p1}, Lcom/prineside/kryo/FixedInput;->setBuffer([B)V

    invoke-virtual {v1, v0}, Lcom/prineside/kryo/FixedInput;->readVarInt(Z)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    new-instance v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->d:Lcom/prineside/kryo/FixedInput;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->read(Lcom/prineside/kryo/FixedInput;)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skipped reading replay ChartFrames data - version mismatch ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReplayManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    sget-object p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->a:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedOutput;->clear()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->write(Lcom/prineside/kryo/FixedOutput;)V

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedOutput;->position()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedOutput;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/kryo/FixedOutput;->position()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBytes([BII)V

    return-void
.end method

.method public write(Lcom/prineside/kryo/FixedOutput;)V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    sget-object v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->b:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {v0}, Lcom/prineside/kryo/FixedOutput;->clear()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v2, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->frames:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_0

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;

    aget-object v3, v3, v2

    sget-object v4, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->b:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames$FrameValues;->write(Lcom/prineside/kryo/FixedOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->b:Lcom/prineside/kryo/FixedOutput;

    invoke-virtual {v2}, Lcom/prineside/kryo/FixedOutput;->position()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Lcom/prineside/kryo/FixedOutput;->writeVarInt(IZ)I

    invoke-virtual {v2}, Lcom/prineside/kryo/FixedOutput;->getBuffer()[B

    move-result-object v1

    invoke-virtual {v2}, Lcom/prineside/kryo/FixedOutput;->position()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/prineside/kryo/FixedOutput;->writeBytes([BII)V

    return-void
.end method
