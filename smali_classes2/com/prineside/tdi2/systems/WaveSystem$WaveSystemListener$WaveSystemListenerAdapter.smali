.class public abstract Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WaveSystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public forceWaveAvailabilityChanged()V
    .locals 0

    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextWaveForced(IIF)V
    .locals 0

    return-void
.end method

.method public statusChanged(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V
    .locals 0

    return-void
.end method

.method public waveCompleted(Lcom/prineside/tdi2/Wave;)V
    .locals 0

    return-void
.end method

.method public waveStarted()V
    .locals 0

    return-void
.end method
