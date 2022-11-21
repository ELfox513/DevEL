.class Lcom/prineside/tdi2/ui/components/PauseMenu$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/PauseMenu$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/PauseMenu$7;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/PauseMenu$7;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$7$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$7$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$7;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/PauseMenu$7;->b:Lcom/prineside/tdi2/ui/components/PauseMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$7$1;->a:Lcom/prineside/tdi2/ui/components/PauseMenu$7;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/PauseMenu$7;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->triggerGameOver(Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;)V

    return-void
.end method
