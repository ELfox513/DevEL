.class Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;
.super Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/PauseMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_LootSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/PauseMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/LootSystem$LootSystemListener$LootSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/ui/components/PauseMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    return-void
.end method


# virtual methods
.method public rewardingAdRegistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->h(Lcom/prineside/tdi2/ui/components/PauseMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/PauseMenu;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->i(Lcom/prineside/tdi2/ui/components/PauseMenu;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;->a:Lcom/prineside/tdi2/ui/components/PauseMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu;->setVisible(Z)V

    :cond_0
    return-void
.end method
