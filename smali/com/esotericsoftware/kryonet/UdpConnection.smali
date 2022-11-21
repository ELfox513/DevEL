.class Lcom/esotericsoftware/kryonet/UdpConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/net/InetSocketAddress;

.field public b:Ljava/nio/channels/DatagramChannel;

.field public c:I

.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:Lcom/esotericsoftware/kryonet/Serialization;

.field public g:Ljava/nio/channels/SelectionKey;

.field public final h:Ljava/lang/Object;

.field public i:J


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Serialization;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4a38

    iput v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->c:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->f:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public bind(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->g:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->i:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    throw p1
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->g:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "kryonet"

    const-string v2, "Unable to close UDP connection."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public connect(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V
    .locals 3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openDatagramChannel()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->g:Ljava/nio/channels/SelectionKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->i:J

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->close()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public needsKeepAlive(J)Z
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->c:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->i:J

    sub-long/2addr p1, v1

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public readFromAddress()Ljava/net/InetSocketAddress;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->i:J

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->f:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1, v1}, Lcom/esotericsoftware/kryonet/Serialization;->read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining) used to deserialize object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    const-string v1, "Error during deserialization."

    invoke-direct {v0, v1, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw p1
.end method

.method public send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Ljava/net/SocketAddress;)I
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->f:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-interface {v2, p1, v3, p2}, Lcom/esotericsoftware/kryonet/Serialization;->write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->i:J

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p3, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error serializing object of type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/UdpConnection;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_1
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Connection is closed."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
