.class Lcom/prineside/tdi2/managers/AuthManager$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->receiveIssuedItemsFromServer(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:Lcom/prineside/tdi2/managers/AuthManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->b:Lcom/prineside/tdi2/managers/AuthManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "AuthManager"

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    :try_start_1
    new-instance p2, Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-direct {p2, v1}, Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;-><init>(Lcom/prineside/tdi2/managers/AuthManager;)V

    const-string v1, "issuedItems"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, p2, Lcom/prineside/tdi2/managers/AuthManager$ReceivedIssuedItemsResponse;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v1}, Lcom/prineside/tdi2/IssuedItems;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/IssuedItems;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->D(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->D(Lcom/prineside/tdi2/managers/AuthManager;)Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AuthManager$NewsResponse;->itemsFromServer:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$20;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "failed to parse receiveIssuedItemsFromServer"

    invoke-static {v0, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t retrieve receiveIssuedItemsFromServer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Failed to parse response"

    invoke-static {v0, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const-string p1, "can\'t retrieve receiveIssuedItemsFromServer"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
