.class Lcom/prineside/tdi2/screens/LevelSelectScreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V
    .locals 3

    iget-boolean v0, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->success:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;->leaderboards:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->a(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->a(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->setTopLeaderboards(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$1;->retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$BasicLevelsTopLeaderboards;)V

    return-void
.end method
