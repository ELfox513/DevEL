.class Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/HeadlessReplayCleanupGame;->j(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic c:Lcom/prineside/tdi2/HeadlessReplayCleanupGame;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/HeadlessReplayCleanupGame;JLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->c:Lcom/prineside/tdi2/HeadlessReplayCleanupGame;

    iput-wide p2, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->a:J

    iput-object p4, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 2

    const-string v0, "HeadlessReplayCleanupGame"

    const-string v1, "Cancelled"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "HeadlessReplayCleanupGame"

    const-string v1, "Failed"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 6

    const-string v0, "status"

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got from server in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->a:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x3a83126f    # 0.001f

    mul-float v2, v2, v3

    float-to-double v2, v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "s, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadlessReplayCleanupGame"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-gt v3, v4, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status is not success: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayCleanupGame$2;->b:Lcom/prineside/tdi2/utils/ObjectRetriever;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
