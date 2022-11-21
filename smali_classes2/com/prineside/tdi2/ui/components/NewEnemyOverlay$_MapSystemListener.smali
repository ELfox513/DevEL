.class Lcom/prineside/tdi2/ui/components/NewEnemyOverlay$_MapSystemListener;
.super Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_MapSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/MapSystem$MapSystemListener$MapSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;Lcom/prineside/tdi2/ui/components/NewEnemyOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;)V

    return-void
.end method


# virtual methods
.method public enemySpawnedOnMap(Lcom/prineside/tdi2/Enemy;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;->a(Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->isEnemyTypeNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/EnemyManager;->markEnemyTypeAsNotNewForPlayer(Lcom/prineside/tdi2/enums/EnemyType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay$_MapSystemListener;->a:Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/components/NewEnemyOverlay;->show(Lcom/prineside/tdi2/enums/EnemyType;)V

    :cond_1
    return-void
.end method
