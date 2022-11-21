.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->o(Lcom/prineside/tdi2/BasicLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/BasicLevel;

.field public final synthetic b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$7;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$7;->a:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->leaderboardsOverlay:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$7;->a:Lcom/prineside/tdi2/BasicLevel;

    sget-object v2, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->score:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->show(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;)V

    return-void
.end method
