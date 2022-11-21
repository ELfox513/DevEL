.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;->run()V
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
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$2;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$2;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;

    iget-object v1, v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;->a:Lcom/prineside/tdi2/BasicLevel;

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/ScreenManager;->startNewBasicLevel(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$2;->retrieved(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    return-void
.end method
