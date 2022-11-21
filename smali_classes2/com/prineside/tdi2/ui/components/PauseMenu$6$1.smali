.class Lcom/prineside/tdi2/ui/components/PauseMenu$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/PauseMenu$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/PauseMenu$6;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/PauseMenu$6;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$6$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$6$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$6;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/PauseMenu$6;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/systems/StateSystem;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->startReplay(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->restartGame(Z)V

    :goto_0
    return-void
.end method
