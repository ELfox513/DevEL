.class public Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeaderboardsRank"
.end annotation


# instance fields
.field public boardDate:Ljava/lang/String;

.field public isAdvance:Z

.field public playerId:Ljava/lang/String;

.field public rank:I

.field public requestTimestamp:I

.field public score:J

.field public success:Z

.field public total:I


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->isAdvance:Z

    iput-object p4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->playerId:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->success:Z

    iput-object p3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->boardDate:Ljava/lang/String;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->requestTimestamp:I

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/DailyQuestManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
