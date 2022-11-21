.class public Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyQuestLeaderboards"
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field public entries:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

.field public playerId:Ljava/lang/String;

.field public requestTimestamp:I

.field public success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->entries:Lcom/badlogic/gdx/utils/Array;

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->success:Z

    iput-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->date:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->playerId:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->requestTimestamp:I

    return-void
.end method
