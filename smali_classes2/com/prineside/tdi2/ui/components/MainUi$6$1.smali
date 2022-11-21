.class Lcom/prineside/tdi2/ui/components/MainUi$6$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MainUi$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/ui/components/MainUi$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$6$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$6;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SLOW_MOTION_PAUSE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x3d889a02    # 0.0667f

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi$6$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$6;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MainUi$6;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$6$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$6;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi$6;->a(Lcom/prineside/tdi2/ui/components/MainUi$6;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$6$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$6;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/MainUi$6;->a(Lcom/prineside/tdi2/ui/components/MainUi$6;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi$6$1;->q:Lcom/prineside/tdi2/ui/components/MainUi$6;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$6;->b(Lcom/prineside/tdi2/ui/components/MainUi$6;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_1
    return-void
.end method
