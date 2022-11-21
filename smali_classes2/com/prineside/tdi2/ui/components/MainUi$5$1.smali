.class Lcom/prineside/tdi2/ui/components/MainUi$5$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MainUi$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/ui/components/MainUi$5;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi$5;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/WaveSystem;->setAutoForceWaveEnabled(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->AUTO_FORCE_WAVE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi$5;->a(Lcom/prineside/tdi2/ui/components/MainUi$5;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi$5;->a(Lcom/prineside/tdi2/ui/components/MainUi$5;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$5;->b(Lcom/prineside/tdi2/ui/components/MainUi$5;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_1
    return-void
.end method
