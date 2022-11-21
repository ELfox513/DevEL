.class Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;->a:Lcom/prineside/tdi2/UserMap;

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AbilityManager;->isAnyAbilityOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    new-instance v1, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1$1;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;)V

    new-instance v2, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1$2;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1$2;-><init>(Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->show(Ljava/lang/Runnable;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5$1;->a:Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/CustomMapSelectScreen$5;->a:Lcom/prineside/tdi2/UserMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewUserLevel(Lcom/prineside/tdi2/UserMap;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    :goto_1
    return-void
.end method
