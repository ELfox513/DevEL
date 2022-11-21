.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem;->deleteSavedGame()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$8;->a:Lcom/prineside/tdi2/BasicLevel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewBasicLevel(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method
