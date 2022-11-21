.class public abstract Lcom/esotericsoftware/kryonet/util/TcpIdleSender;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public idle(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/util/TcpIdleSender;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/util/TcpIdleSender;->a:Z

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/util/TcpIdleSender;->start()V

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/util/TcpIdleSender;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public abstract next()Ljava/lang/Object;
.end method

.method public start()V
    .locals 0

    return-void
.end method
