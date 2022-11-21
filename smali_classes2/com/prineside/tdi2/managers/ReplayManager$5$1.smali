.class Lcom/prineside/tdi2/managers/ReplayManager$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ReplayManager$5;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic d:Lcom/prineside/tdi2/managers/ReplayManager$5;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ReplayManager$5;Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReplayManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$5;->d:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ReplayManager;->c(Lcom/prineside/tdi2/managers/ReplayManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$5;->d:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ReplayManager;->d(Lcom/prineside/tdi2/managers/ReplayManager;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$5;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->removePreferencesData()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$5;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveLocally()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$5;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v1, "xpGained"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v3, "regular"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->regularXpGained:I

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v3, "bonus"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->bonusXpGained:I

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const-string v3, "bonusLeft"

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->bonusXpLeft:Z

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->b:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "regularLeft"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplaySendStatus;->regularXpLeft:Z

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$5$1;->d:Lcom/prineside/tdi2/managers/ReplayManager$5;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$5;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
