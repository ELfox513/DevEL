.class Lcom/prineside/tdi2/managers/DailyQuestManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;->getLeaderboards(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic d:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

.field public final synthetic e:Lcom/prineside/tdi2/managers/DailyQuestManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->e:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput-object p5, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->d:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->b(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    const-string v0, "DailyQuestManager"

    const-string v1, "Timeout while getting leaderboards"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/DailyQuestManager$7$4;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$7$4;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$7;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "DailyQuestManager"

    const-string v1, "Error while getting leaderboards"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$7$3;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$7$3;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$7;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 14

    :try_start_0
    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DailyQuestManager"

    const-string v1, "getLeaderboards got from server"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DailyQuestManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p1, v3, v1, v2}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "player"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "player"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->b:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;-><init>(ZZLjava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/DailyQuestManager$1;)V

    iput-object v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    const-string v4, "total"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->total:I

    iget-object v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    const-string v4, "rank"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->rank:I

    iget-object v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    const-string v4, "score"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->score:J

    :cond_0
    const-string v1, "leaderboards"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    const/4 v9, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->entries:Lcom/badlogic/gdx/utils/Array;

    new-instance v12, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    const-string v4, "playerid"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "nickname"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "score"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    add-int/lit8 v13, v9, 0x1

    const-string v4, "hasPfp"

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v4, "level"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JIZI)V

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v9, v13

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->e:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->j(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->e:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->j(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "DailyQuestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lb cache - stored "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->playerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    new-instance v2, Lcom/prineside/tdi2/managers/n;

    invoke-direct {v2, v1, p1}, Lcom/prineside/tdi2/managers/n;-><init>(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_2
    const-string v0, "DailyQuestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t retrieve leaderboards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$7$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$7$1;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$7;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "DailyQuestManager"

    const-string v1, "Failed to parse response"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$7$2;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/DailyQuestManager$7$2;-><init>(Lcom/prineside/tdi2/managers/DailyQuestManager$7;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
