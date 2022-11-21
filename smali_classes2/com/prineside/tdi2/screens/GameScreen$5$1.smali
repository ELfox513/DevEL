.class Lcom/prineside/tdi2/screens/GameScreen$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/GameScreen$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/GameScreen$5;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/GameScreen$5;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/GameScreen$5$1;->a:Lcom/prineside/tdi2/screens/GameScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;)V
    .locals 4

    iget v0, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->regularXpGained:I

    if-lez v0, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->profileSummary:Lcom/prineside/tdi2/ui/shared/ProfileSummary;

    iget v2, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->bonusXpGained:I

    iget-boolean v3, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->bonusXpLeft:Z

    iget-boolean p1, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->regularXpLeft:Z

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/prineside/tdi2/ui/shared/ProfileSummary;->showXpGained(IIZZ)V

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->replayManager:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ReplayManager;->sendUnsentReplaysToTheServer()V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/GameScreen$5$1;->retrieved(Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;)V

    return-void
.end method
