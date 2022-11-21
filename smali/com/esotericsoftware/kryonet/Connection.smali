.class public Lcom/esotericsoftware/kryonet/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public d:Lcom/esotericsoftware/kryonet/EndPoint;

.field public k:Lcom/esotericsoftware/kryonet/TcpConnection;

.field public p:Lcom/esotericsoftware/kryonet/UdpConnection;

.field public q:Ljava/net/InetSocketAddress;

.field public r:[Lcom/esotericsoftware/kryonet/Listener;

.field public s:Ljava/lang/Object;

.field public t:I

.field public u:J

.field public v:I

.field public volatile w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/kryonet/Listener;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/esotericsoftware/kryonet/Serialization;II)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/esotericsoftware/kryonet/TcpConnection;-><init>(Lcom/esotericsoftware/kryonet/Serialization;II)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    return-void
.end method

.method public addListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 6

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-ne p1, v5, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lcom/esotericsoftware/kryonet/Listener;

    aput-object p1, v4, v3

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection listener added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public b()V
    .locals 4

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryonet"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3, p0}, Lcom/esotericsoftware/kryonet/Listener;->connected(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/esotericsoftware/kryonet/Listener;->disconnected(Lcom/esotericsoftware/kryonet/Connection;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->c()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "kryonet"

    invoke-static {v2, v0}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/Connection;->f(Z)V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lcom/esotericsoftware/kryonet/Listener;->idle(Lcom/esotericsoftware/kryonet/Connection;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    iget-boolean v1, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->isReply:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->id:I

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->t:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/esotericsoftware/kryonet/Connection;->u:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryonet/Connection;->v:I

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " return trip time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryonet"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->isReply:Z

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3, p0, p1}, Lcom/esotericsoftware/kryonet/Listener;->received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public f(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Connection;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connection "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Connection;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getEndPoint()Lcom/esotericsoftware/kryonet/EndPoint;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->d:Lcom/esotericsoftware/kryonet/EndPoint;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    return v0
.end method

.method public getRemoteAddressTCP()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteAddressUDP()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->q:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getReturnTripTime()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/Connection;->v:I

    return v0
.end method

.method public getTcpWriteBufferSize()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget v1, v1, Lcom/esotericsoftware/kryonet/TcpConnection;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 9

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v2, v1

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v3, v2, -0x1

    new-array v4, v3, [Lcom/esotericsoftware/kryonet/Listener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v7, v1, v5

    if-ne p1, v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v3, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v8, v6, 0x1

    aput-object v7, v4, v6

    move v6, v8

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iput-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->r:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_4

    const-string v0, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection listener removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public sendTCP(Ljava/lang/Object;)I
    .locals 8

    const-string v0, "Unable to send TCP with connection: "

    const-string v1, "kryonet"

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v3, p0, p1}, Lcom/esotericsoftware/kryonet/TcpConnection;->send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " TCP had nothing to send."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    instance-of p1, p1, Lcom/esotericsoftware/kryonet/FrameworkMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, " sent TCP: "

    if-nez p1, :cond_1

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return v3

    :catch_0
    move-exception p1

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    return v2

    :catch_1
    move-exception p1

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    return v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendUDP(Ljava/lang/Object;)I
    .locals 8

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->q:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is not connected via UDP."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string v1, "Unable to send UDP with connection: "

    const/4 v2, 0x0

    const-string v3, "kryonet"

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v4, p0, p1, v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Ljava/net/SocketAddress;)I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " UDP had nothing to send."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    instance-of p1, p1, Lcom/esotericsoftware/kryonet/FrameworkMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ")"

    const-string v6, " ("

    const-string v7, " sent UDP: "

    if-nez p1, :cond_4

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was unable to send, UDP socket buffer full."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return v0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/net/SocketException;

    const-string v0, "Connection is closed."

    invoke-direct {p1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    return v2

    :goto_3
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    return v2

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBufferPositionFix(Z)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput-boolean p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->e:Z

    return-void
.end method

.method public setIdleThreshold(F)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->g:F

    return-void
.end method

.method public setKeepAliveTCP(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->b:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Connection;->b:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iput p1, v0, Lcom/esotericsoftware/kryonet/TcpConnection;->f:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateReturnTripTime()V
    .locals 3

    new-instance v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;-><init>()V

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryonet/Connection;->t:I

    iput v1, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/esotericsoftware/kryonet/Connection;->u:J

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    return-void
.end method
