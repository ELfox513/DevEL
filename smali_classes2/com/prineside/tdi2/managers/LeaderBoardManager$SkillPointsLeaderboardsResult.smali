.class public Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkillPointsLeaderboardsResult"
.end annotation


# instance fields
.field public entries:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public player:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;

.field public playerId:Ljava/lang/String;

.field public requestTimestamp:I

.field public success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsRank;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->playerId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->success:Z

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;->requestTimestamp:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/prineside/tdi2/managers/LeaderBoardManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/managers/LeaderBoardManager$SkillPointsLeaderboardsResult;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
