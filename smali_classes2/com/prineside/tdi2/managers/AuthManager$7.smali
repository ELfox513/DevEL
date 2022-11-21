.class Lcom/prineside/tdi2/managers/AuthManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->postRender(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(ZLjava/lang/String;)V
    .locals 5

    const-string v0, "news"

    const-string v1, "AuthManager"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v3, "status"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    new-instance p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    invoke-direct {p2}, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;-><init>()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    iput v3, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->cachedAt:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->id:I

    const-string v0, "network_min_required_version"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->networkRequiredVersion:I

    const-string v0, "last_version"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->lastVersion:I

    const-string v0, "season_number"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonNumber:I

    const-string v0, "season_position"

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPosition:I

    const-string v0, "season_player_count"

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->seasonPlayerCount:I

    const-string v0, "issuedItems"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, p2, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->itemsFromServer:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/prineside/tdi2/IssuedItems;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/IssuedItems;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/managers/AuthManager;->E(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;)Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v0, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "failed to parse news"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->g(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t retrieve news: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->g(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Failed to parse response"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->g(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_2

    :cond_4
    const-string p1, "can\'t retrieve news"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1, v2}, Lcom/prineside/tdi2/managers/AuthManager;->g(Lcom/prineside/tdi2/managers/AuthManager;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$7;->a:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->F(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :goto_2
    return-void
.end method
