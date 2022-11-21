.class Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/LeaderBoardManager$2;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;-><init>(Z)V

    iget-object v3, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->a:Lcom/prineside/tdi2/enums/DifficultyMode;

    iput-object v3, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    iget-object v3, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v4, "levels"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v5, "level"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "leaderboards"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v4

    const/4 v12, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    const-string v8, "playerid"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "nickname"

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "score"

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    new-instance v15, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    add-int/lit8 v16, v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JIZI)V

    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move/from16 v12, v16

    goto :goto_1

    :cond_0
    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->leaderboards:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v2, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->e(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->f(Lcom/prineside/tdi2/managers/LeaderBoardManager;)V

    iget-object v2, v0, Lcom/prineside/tdi2/managers/LeaderBoardManager$2$1;->b:Lcom/prineside/tdi2/managers/LeaderBoardManager$2;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$2;->c:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    invoke-static {v2, v1}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->g(Lcom/prineside/tdi2/managers/LeaderBoardManager;Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V

    return-void
.end method
