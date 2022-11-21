.class Lcom/prineside/tdi2/HeadlessNetTestingGame$1;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/HeadlessNetTestingGame;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/HeadlessNetTestingGame;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/HeadlessNetTestingGame;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame$1;->a:Lcom/prineside/tdi2/HeadlessNetTestingGame;

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadlessReplayValidationGame"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame$1;->a:Lcom/prineside/tdi2/HeadlessNetTestingGame;

    iget-wide v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->o:J

    iget v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    iget v1, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->s:I

    if-le v0, v1, :cond_0

    iput v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->s:I

    :cond_0
    return-void
.end method

.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadlessReplayValidationGame"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame$1;->a:Lcom/prineside/tdi2/HeadlessNetTestingGame;

    iget v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->q:I

    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p2, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;

    const-string v1, "HeadlessReplayValidationGame"

    if-eqz v0, :cond_0

    check-cast p2, Lcom/prineside/tdi2/managers/NetworkManager$NetReqConnect;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received connection request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", sending response"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/prineside/tdi2/managers/NetworkManager$NetRespConnect;

    invoke-direct {p2}, Lcom/prineside/tdi2/managers/NetworkManager$NetRespConnect;-><init>()V

    const-string v0, "Hi!"

    iput-object v0, p2, Lcom/prineside/tdi2/managers/NetworkManager$NetRespConnect;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessNetTestingGame$1;->a:Lcom/prineside/tdi2/HeadlessNetTestingGame;

    iget-wide v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/prineside/tdi2/HeadlessNetTestingGame;->p:J

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
