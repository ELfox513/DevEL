.class Lcom/prineside/tdi2/ui/components/GameOverOverlay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/GameOverOverlay;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/GameOverOverlay;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$3;->b:Lcom/prineside/tdi2/ui/components/GameOverOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/GameOverOverlay$3;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToLevelSelectScreen()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ScreenManager;->goToCustomMapSelectScreen()V

    :goto_0
    return-void
.end method
