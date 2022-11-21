.class Lcom/prineside/tdi2/managers/ReplayManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/ReplayManager$4;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/utils/JsonValue;

.field public final synthetic b:Lcom/prineside/tdi2/managers/ReplayManager$4;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/ReplayManager$4;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "ReplayManager"

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->a:Lcom/badlogic/gdx/utils/JsonValue;

    const-string v2, "replay"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->fromCompactString(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ReplayManager$4;->c:Lcom/prineside/tdi2/managers/ReplayManager;

    iget-object v4, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/ReplayManager;->getRecord(Ljava/lang/String;)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "skilled loading best replay from server ("

    const-string v5, ", "

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ReplayManager$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - already stored locally"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget v3, v3, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/ReplayManager$4;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") - chartFrames version differ ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->chartFrames:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;

    iget v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord$ChartFrames;->version:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->saveLocally()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/ReplayManager$4;->c:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-static {v5}, Lcom/prineside/tdi2/managers/ReplayManager;->c(Lcom/prineside/tdi2/managers/ReplayManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/ReplayManager$4;->c:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-static {v5}, Lcom/prineside/tdi2/managers/ReplayManager;->c(Lcom/prineside/tdi2/managers/ReplayManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$4;->c:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/ReplayManager;->c(Lcom/prineside/tdi2/managers/ReplayManager;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    iget-object v3, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$4;->c:Lcom/prineside/tdi2/managers/ReplayManager;

    invoke-static {v2}, Lcom/prineside/tdi2/managers/ReplayManager;->d(Lcom/prineside/tdi2/managers/ReplayManager;)V

    :cond_4
    iget-object v2, p0, Lcom/prineside/tdi2/managers/ReplayManager$4$1;->b:Lcom/prineside/tdi2/managers/ReplayManager$4;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$4;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz v2, :cond_5

    invoke-interface {v2, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "failed to load best replay from server"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method
