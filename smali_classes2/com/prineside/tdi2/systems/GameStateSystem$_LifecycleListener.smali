.class Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_LifecycleListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/GameStateSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;->a:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem;Lcom/prineside/tdi2/systems/GameStateSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;->a:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->c(Lcom/prineside/tdi2/systems/GameStateSystem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameStateSystem$_LifecycleListener;->a:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->pauseGame()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
