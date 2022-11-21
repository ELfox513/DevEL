.class public interface abstract Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/WaveSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WaveSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract forceWaveAvailabilityChanged()V
.end method

.method public abstract nextWaveForced(IIF)V
.end method

.method public abstract statusChanged(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V
.end method

.method public abstract waveCompleted(Lcom/prineside/tdi2/Wave;)V
.end method

.method public abstract waveStarted()V
.end method
