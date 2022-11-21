.class Lcom/prineside/tdi2/managers/AuthManager$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager;->sendAutoSignUpDetails(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
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

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->b:Lcom/prineside/tdi2/managers/AuthManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "AuthManager"

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager;->y(Lcom/prineside/tdi2/managers/AuthManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

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

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->b:Lcom/prineside/tdi2/managers/AuthManager;

    const/4 p2, 0x0

    new-instance v1, Lcom/prineside/tdi2/managers/AuthManager$19$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/AuthManager$19$1;-><init>(Lcom/prineside/tdi2/managers/AuthManager$19;)V

    invoke-virtual {p1, p2, v1}, Lcom/prineside/tdi2/managers/AuthManager;->loadStateFromServer(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to send details data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_3

    :try_start_1
    const-string v1, "signUpResult"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    sget-object p2, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "Failed to parse response"

    invoke-static {v0, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    sget-object p2, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "Failed to sign up"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$19;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    sget-object p2, Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;->OTHER_ERROR:Lcom/prineside/tdi2/managers/AuthManager$SignUpResult;

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
