.class Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;
.super Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MainUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_WaveSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/WaveSystem$WaveSystemListener$WaveSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method


# virtual methods
.method public forceWaveAvailabilityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi;->d(Lcom/prineside/tdi2/ui/components/MainUi;)V

    return-void
.end method

.method public statusChanged(Lcom/prineside/tdi2/systems/WaveSystem$Status;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->updateWave()V

    return-void
.end method
