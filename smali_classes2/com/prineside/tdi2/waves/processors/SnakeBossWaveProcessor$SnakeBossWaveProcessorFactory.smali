.class public Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$SnakeBossWaveProcessorFactory;
.super Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnakeBossWaveProcessorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory<",
        "Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/BossType;->SNAKE:Lcom/prineside/tdi2/enums/BossType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/WaveProcessor$WaveProcessorFactory;-><init>(Lcom/prineside/tdi2/enums/BossType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/WaveProcessor;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$SnakeBossWaveProcessorFactory;->create()Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor;-><init>(Lcom/prineside/tdi2/waves/processors/SnakeBossWaveProcessor$1;)V

    return-object v0
.end method
