.class Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9$1;->p:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9$1;->o:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager;->getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/WebBrowser;->webView:Lcom/prineside/tdi2/ui/actors/WebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/prineside/tdi2/Config;->XDX_VIEW_PLAYER_PROFILE_URL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9$1;->o:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    iget-object p3, p3, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->playerId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GET"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/prineside/tdi2/ui/actors/WebView;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/UiManager;->getWebBrowser()Lcom/prineside/tdi2/ui/shared/WebBrowser;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/WebBrowser;->setVisible(Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->leaderboardsOverlay:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->hide()V

    return-void
.end method
