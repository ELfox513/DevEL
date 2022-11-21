.class public Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkillPointsLeaderboardsRank"
.end annotation


# instance fields
.field public playerId:Ljava/lang/String;

.field public rank:I

.field public requestTimestamp:I

.field public score:I

.field public success:Z

.field public total:I


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;->playerId:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;->success:Z

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;->requestTimestamp:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;-><init>(ZLjava/lang/String;)V

    return-void
.end method
