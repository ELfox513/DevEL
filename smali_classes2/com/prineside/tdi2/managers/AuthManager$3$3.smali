.class Lcom/prineside/tdi2/managers/AuthManager$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AuthManager$3;->cancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AuthManager$3;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AuthManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AuthManager$3$3;->a:Lcom/prineside/tdi2/managers/AuthManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net: canceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AuthManager$3$3;->a:Lcom/prineside/tdi2/managers/AuthManager$3;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AuthManager$3;->a:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->a(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$3$3;->a:Lcom/prineside/tdi2/managers/AuthManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$3;->a:Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;->c(Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest$Listener;->finished(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$3$3;->a:Lcom/prineside/tdi2/managers/AuthManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$3;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0, v2}, Lcom/prineside/tdi2/managers/AuthManager;->A(Lcom/prineside/tdi2/managers/AuthManager;Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;)Lcom/prineside/tdi2/managers/AuthManager$HttpQueuedRequest;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/AuthManager$3$3;->a:Lcom/prineside/tdi2/managers/AuthManager$3;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AuthManager$3;->b:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/AuthManager;->B(Lcom/prineside/tdi2/managers/AuthManager;)V

    return-void
.end method
