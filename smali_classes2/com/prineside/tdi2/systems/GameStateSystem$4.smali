.class Lcom/prineside/tdi2/systems/GameStateSystem$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;->restartGame(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/GameStateSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$4;->a:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameStateSystem$4;->a:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewUserLevel(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/GameStateSystem$4;->retrieved(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method
