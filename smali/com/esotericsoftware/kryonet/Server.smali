.class public Lcom/esotericsoftware/kryonet/Server;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryonet/EndPoint;


# instance fields
.field public A:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;

.field public B:Lcom/esotericsoftware/kryonet/Listener;

.field public final a:Lcom/esotericsoftware/kryonet/Serialization;

.field public final b:I

.field public final d:I

.field public final k:Ljava/nio/channels/Selector;

.field public p:I

.field public q:Ljava/nio/channels/ServerSocketChannel;

.field public r:Lcom/esotericsoftware/kryonet/UdpConnection;

.field public s:[Lcom/esotericsoftware/kryonet/Connection;

.field public t:Lcom/esotericsoftware/kryo/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "Lcom/esotericsoftware/kryonet/Connection;",
            ">;"
        }
    .end annotation
.end field

.field public u:[Lcom/esotericsoftware/kryonet/Listener;

.field public v:Ljava/lang/Object;

.field public w:I

.field public volatile x:Z

.field public y:Ljava/lang/Object;

.field public z:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x4000

    const/16 v1, 0x800

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryonet/Server;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryonet/Server;-><init>(IILcom/esotericsoftware/kryonet/Serialization;)V

    return-void
.end method

.method public constructor <init>(IILcom/esotericsoftware/kryonet/Serialization;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/esotericsoftware/kryonet/Connection;

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    new-instance v1, Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->t:Lcom/esotericsoftware/kryo/util/IntMap;

    new-array v0, v0, [Lcom/esotericsoftware/kryonet/Listener;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->v:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/Server;->w:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->y:Ljava/lang/Object;

    new-instance v0, Lcom/esotericsoftware/kryonet/Server$1;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryonet/Server$1;-><init>(Lcom/esotericsoftware/kryonet/Server;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->B:Lcom/esotericsoftware/kryonet/Listener;

    iput p1, p0, Lcom/esotericsoftware/kryonet/Server;->b:I

    iput p2, p0, Lcom/esotericsoftware/kryonet/Server;->d:I

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/Server;->a:Lcom/esotericsoftware/kryonet/Serialization;

    sget-object p1, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;->DEFAULT:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->A:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Error opening selector."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)V
    .locals 5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->newConnection()Lcom/esotericsoftware/kryonet/Connection;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->a:Lcom/esotericsoftware/kryonet/Serialization;

    iget v2, p0, Lcom/esotericsoftware/kryonet/Server;->b:I

    iget v3, p0, Lcom/esotericsoftware/kryonet/Server;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/esotericsoftware/kryonet/Connection;->a(Lcom/esotericsoftware/kryonet/Serialization;II)V

    iput-object p0, v0, Lcom/esotericsoftware/kryonet/Connection;->d:Lcom/esotericsoftware/kryonet/EndPoint;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->r:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v3, p1}, Lcom/esotericsoftware/kryonet/TcpConnection;->accept(Ljava/nio/channels/Selector;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/esotericsoftware/kryonet/Server;->w:I

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryonet/Server;->w:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    iput v4, p0, Lcom/esotericsoftware/kryonet/Server;->w:I

    :cond_1
    iput p1, v0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    invoke-virtual {v0, v4}, Lcom/esotericsoftware/kryonet/Connection;->f(Z)V

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->B:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Server;->b(Lcom/esotericsoftware/kryonet/Connection;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->t:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v2, p1, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    invoke-direct {v2}, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;-><init>()V

    iput p1, v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;->connectionID:I

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "kryonet"

    const-string v1, "Unable to accept TCP connection."

    invoke-static {v0, v1, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public addListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 6

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

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

    iput-object v4, p0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server listener added: "

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

.method public final b(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/esotericsoftware/kryonet/Connection;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    return-void
.end method

.method public bind(I)V
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/kryonet/Server;->bind(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public bind(II)V
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Lcom/esotericsoftware/kryonet/Server;->bind(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method public bind(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->q:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->q:Ljava/nio/channels/ServerSocketChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->q:Ljava/nio/channels/ServerSocketChannel;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "kryonet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accepting connections on port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/TCP"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->a:Lcom/esotericsoftware/kryonet/Serialization;

    iget v2, p0, Lcom/esotericsoftware/kryonet/Server;->d:I

    invoke-direct {p1, v1, v2}, Lcom/esotericsoftware/kryonet/UdpConnection;-><init>(Lcom/esotericsoftware/kryonet/Serialization;I)V

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->r:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1, p2}, Lcom/esotericsoftware/kryonet/UdpConnection;->bind(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accepting connections on port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "/UDP"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz p1, :cond_2

    const-string p1, "kryonet"

    const-string p2, "Server opened."

    invoke-static {p1, p2}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget-object v6, v5, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v6, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->needsKeepAlive(J)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const-string v1, "kryonet"

    const-string v2, "Closing server connections..."

    invoke-static {v1, v2}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->q:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_2

    const-string v0, "kryonet"

    const-string v2, "Server closed."

    invoke-static {v0, v2}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "kryonet"

    const-string v3, "Unable to close server."

    invoke-static {v2, v3, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->q:Ljava/nio/channels/ServerSocketChannel;

    :cond_3
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->r:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->r:Lcom/esotericsoftware/kryonet/UdpConnection;

    :cond_4
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public d(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryonet/Connection;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->t:Lcom/esotericsoftware/kryo/util/IntMap;

    iget p1, p1, Lcom/esotericsoftware/kryonet/Connection;->a:I

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method public getConnections()[Lcom/esotericsoftware/kryonet/Connection;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    return-object v0
.end method

.method public getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->a:Lcom/esotericsoftware/kryonet/Serialization;

    check-cast v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    return-object v0
.end method

.method public getSerialization()Lcom/esotericsoftware/kryonet/Serialization;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->a:Lcom/esotericsoftware/kryonet/Serialization;

    return-object v0
.end method

.method public getUpdateThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->z:Ljava/lang/Thread;

    return-object v0
.end method

.method public newConnection()Lcom/esotericsoftware/kryonet/Connection;
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/Connection;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/Connection;-><init>()V

    return-object v0
.end method

.method public removeListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 9

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    array-length v2, v1

    add-int/lit8 v3, v2, -0x1

    new-array v4, v3, [Lcom/esotericsoftware/kryonet/Listener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v7, v1, v5

    if-ne p1, v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v6, v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v8, v6, 0x1

    aput-object v7, v4, v6

    move v6, v8

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/esotericsoftware/kryonet/Server;->u:[Lcom/esotericsoftware/kryonet/Listener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    const-string v0, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server listener removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v1, "kryonet"

    if-eqz v0, :cond_0

    const-string v0, "Server thread started."

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->x:Z

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->x:Z

    if-nez v0, :cond_2

    const/16 v0, 0xfa

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Server;->update(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v2, :cond_1

    const-string v2, "Error updating server connections."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    const-string v0, "Server thread stopped."

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public sendToAllExceptTCP(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->a:I

    if-eq v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendToAllExceptUDP(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->a:I

    if-eq v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendToAllTCP(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendToAllUDP(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendToTCP(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->a:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sendToUDP(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/esotericsoftware/kryonet/Connection;->a:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setDiscoveryHandler(Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->A:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;

    return-void
.end method

.method public start()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Server"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->close()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    const-string v0, "kryonet"

    const-string v1, "Server thread stopping."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Server;->x:Z

    return-void
.end method

.method public update(I)V
    .locals 12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->z:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/esotericsoftware/kryonet/Server;->p:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/esotericsoftware/kryonet/Server;->p:I

    const/16 v3, 0x64

    if-ne p1, v3, :cond_20

    iput v2, p0, Lcom/esotericsoftware/kryonet/Server;->p:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x19

    cmp-long p1, v3, v0

    if-gez p1, :cond_20

    sub-long/2addr v0, v3

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_8

    goto/16 :goto_b

    :cond_1
    iput v2, p0, Lcom/esotericsoftware/kryonet/Server;->p:I

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->k:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Server;->r:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Server;->c()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/esotericsoftware/kryonet/Connection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v6

    if-eqz v5, :cond_d

    if-eqz v0, :cond_3

    iget-object v7, v5, Lcom/esotericsoftware/kryonet/Connection;->q:Ljava/net/InetSocketAddress;

    if-nez v7, :cond_3

    invoke-virtual {v5}, Lcom/esotericsoftware/kryonet/Connection;->close()V
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    and-int/lit8 v7, v6, 0x1

    if-ne v7, v3, :cond_a

    :goto_2
    :try_start_4
    iget-object v7, v5, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v7, v5}, Lcom/esotericsoftware/kryonet/TcpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_5

    :cond_4
    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    instance-of v9, v7, Lcom/esotericsoftware/kryonet/FrameworkMessage;

    if-nez v9, :cond_5

    const-string v9, "kryonet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " received TCP: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-boolean v9, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v9, :cond_6

    const-string v9, "kryonet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " received TCP: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-virtual {v5, v7}, Lcom/esotericsoftware/kryonet/Connection;->e(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_5
    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v8, :cond_7

    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading TCP from connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {v5}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_5

    :catch_1
    move-exception v7

    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v8, :cond_8

    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read TCP from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " update: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    invoke-virtual {v5}, Lcom/esotericsoftware/kryonet/Connection;->close()V
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :goto_5
    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    :try_start_6
    iget-object v6, v5, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v6}, Lcom/esotericsoftware/kryonet/TcpConnection;->writeOperation()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v6

    :try_start_7
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_b

    const-string v7, "kryonet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to write TCP to connection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "kryonet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " update: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_6
    invoke-virtual {v5}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto/16 :goto_1

    :cond_d
    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/esotericsoftware/kryonet/Server;->q:Ljava/nio/channels/ServerSocketChannel;
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v6, :cond_e

    goto/16 :goto_1

    :cond_e
    :try_start_8
    invoke-virtual {v6}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryonet/Server;->a(Ljava/nio/channels/SocketChannel;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v6

    :try_start_9
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "kryonet"

    const-string v8, "Unable to accept new connection."

    invoke-static {v7, v8, v6}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_10
    :try_start_a
    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/UdpConnection;->readFromAddress()Ljava/net/InetSocketAddress;

    move-result-object v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez v6, :cond_11

    goto/16 :goto_1

    :cond_11
    :try_start_b
    iget-object v7, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v8, :cond_13

    aget-object v10, v7, v9

    iget-object v11, v10, Lcom/esotericsoftware/kryonet/Connection;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v6, v11}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v11, :cond_12

    move-object v5, v10

    goto :goto_8

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_13
    :goto_8
    :try_start_c
    invoke-virtual {v0, v5}, Lcom/esotericsoftware/kryonet/UdpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;

    move-result-object v7
    :try_end_c
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    instance-of v8, v7, Lcom/esotericsoftware/kryonet/FrameworkMessage;

    if-eqz v8, :cond_18

    instance-of v8, v7, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    if-eqz v8, :cond_17

    check-cast v7, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    iget v7, v7, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;->connectionID:I

    iget-object v8, p0, Lcom/esotericsoftware/kryonet/Server;->t:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v8, v7}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/esotericsoftware/kryonet/Connection;

    if-eqz v8, :cond_16

    iget-object v7, v8, Lcom/esotericsoftware/kryonet/Connection;->q:Ljava/net/InetSocketAddress;

    if-eqz v7, :cond_14

    goto/16 :goto_1

    :cond_14
    iput-object v6, v8, Lcom/esotericsoftware/kryonet/Connection;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/kryonet/Server;->b(Lcom/esotericsoftware/kryonet/Connection;)V

    new-instance v7, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    invoke-direct {v7}, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;-><init>()V

    invoke-virtual {v8, v7}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v7, :cond_15

    const-string v7, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Port "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v10}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/UDP connected to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v8}, Lcom/esotericsoftware/kryonet/Connection;->b()V

    goto/16 :goto_1

    :cond_16
    sget-boolean v6, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "kryonet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring incoming RegisterUDP with invalid connection ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    instance-of v8, v7, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;
    :try_end_d
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v8, :cond_18

    :try_start_e
    iget-object v7, p0, Lcom/esotericsoftware/kryonet/Server;->A:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;

    iget-object v8, p0, Lcom/esotericsoftware/kryonet/Server;->a:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-interface {v7, v0, v6, v8}, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;->onDiscoverHost(Lcom/esotericsoftware/kryonet/UdpConnection;Ljava/net/InetSocketAddress;Lcom/esotericsoftware/kryonet/Serialization;)Z

    move-result v7

    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    const-string v7, "kryonet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Responded to host discovery from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v7

    :try_start_f
    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v8, :cond_2

    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error replying to host discovery from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Lcom/esotericsoftware/minlog/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_18
    if-eqz v5, :cond_1c

    sget-boolean v6, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v6, :cond_1b

    if-nez v7, :cond_19

    const-string v6, "null"

    goto :goto_9

    :cond_19
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    :goto_9
    instance-of v8, v7, Lcom/esotericsoftware/kryonet/FrameworkMessage;

    if-eqz v8, :cond_1a

    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v8, :cond_1b

    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " received UDP: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " received UDP: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_a
    invoke-virtual {v5, v7}, Lcom/esotericsoftware/kryonet/Connection;->e(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1c
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "kryonet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring UDP from unregistered address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_5
    move-exception v7

    sget-boolean v8, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v8, :cond_2

    if-eqz v5, :cond_1d

    sget-boolean v6, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v6, :cond_2

    const-string v6, "kryonet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading UDP from connection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_1d
    const-string v8, "kryonet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading UDP from unregistered address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Lcom/esotericsoftware/minlog/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_6
    move-exception v6

    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v7, :cond_2

    const-string v7, "kryonet"

    const-string v8, "Error reading UDP data."

    invoke-static {v7, v8, v6}, Lcom/esotericsoftware/minlog/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catch_7
    nop

    if-eqz v5, :cond_1e

    :try_start_10
    invoke-virtual {v5}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    goto/16 :goto_1

    :cond_1f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catch_8
    :cond_20
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Server;->s:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v3, p1

    :goto_c
    if-ge v2, v3, :cond_25

    aget-object v4, p1, v2

    iget-object v5, v4, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v5, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->isTimedOut(J)Z

    move-result v5

    if-eqz v5, :cond_22

    sget-boolean v5, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v5, :cond_21

    const-string v5, "kryonet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " timed out."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v4}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    goto :goto_d

    :cond_22
    iget-object v5, v4, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v5, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->needsKeepAlive(J)Z

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {v4, v5}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_23
    :goto_d
    invoke-virtual {v4}, Lcom/esotericsoftware/kryonet/Connection;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Lcom/esotericsoftware/kryonet/Connection;->d()V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    return-void

    :catchall_0
    move-exception v0

    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_f

    :goto_e
    throw p1

    :goto_f
    goto :goto_e
.end method
