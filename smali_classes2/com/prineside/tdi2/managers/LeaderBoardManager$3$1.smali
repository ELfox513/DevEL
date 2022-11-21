.class Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$3;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    new-instance v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->a:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->b:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->c:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iget-object v7, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->d:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;Lcom/prineside/tdi2/enums/DifficultyMode;Ljava/lang/String;Ljava/lang/String;ZLcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "player"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "score"

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const/4 v11, 0x1

    iget-object v4, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iget-object v12, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->b:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget-object v13, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->d:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    const/4 v14, 0x0

    iget-object v15, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->a:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->c:Ljava/lang/String;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/AuthManager;->getPlayerId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object v10, v2

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v18}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;-><init>(ZLcom/prineside/tdi2/enums/DifficultyMode;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;ZLcom/prineside/tdi2/systems/GameStateSystem$GameMode;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/managers/LeaderBoardManager$1;)V

    iput-object v2, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const-string v4, "total"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    iget-object v2, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    const-string v4, "rank"

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    iget-object v2, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->score:J

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "leaderboards"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v15, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    const-string v6, "playerid"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "nickname"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    add-int/lit8 v6, v15, 0x1

    const/4 v7, 0x0

    const-string v8, "hasPfp"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v7, "level"

    invoke-virtual {v4, v7, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v17

    move-object v10, v5

    invoke-direct/range {v10 .. v17}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JIZI)V

    const-string v7, "pinnedBadge"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v7, "iconImg"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconTexture:Ljava/lang/String;

    const-string v7, "iconColor"

    const-string v8, "FFFFFF"

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    iput-object v7, v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconColor:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const-string v10, "overlayImg"

    invoke-virtual {v4, v10, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayTexture:Ljava/lang/String;

    const-string v7, "overlayColor"

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iput-object v4, v5, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_1
    iget-object v4, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v15, v6

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->g:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->h(Lcom/prineside/tdi2/managers/LeaderBoardManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->g:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->f(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V

    iget-object v1, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$3$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$3;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$3;->e:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v1, v9}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
