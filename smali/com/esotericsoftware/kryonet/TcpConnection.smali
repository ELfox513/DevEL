.class Lcom/esotericsoftware/kryonet/TcpConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/nio/channels/SocketChannel;

.field public b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public final d:Ljava/nio/ByteBuffer;

.field public e:Z

.field public f:I

.field public g:F

.field public final h:Lcom/esotericsoftware/kryonet/Serialization;

.field public i:Ljava/nio/channels/SelectionKey;

.field public volatile j:J

.field public volatile k:J

.field public l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Serialization;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->b:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->f:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->g:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->m:Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Connection is closed."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public accept(Ljava/nio/channels/Selector;Ljava/nio/channels/SocketChannel;)Ljava/nio/channels/SelectionKey;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    :try_start_0
    iput-object p2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {p2, p1, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "kryonet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/TCP connected to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->j:J

    iput-wide p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->k:J

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    throw p1
.end method

.method public close()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;

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

    const-string v2, "Unable to close TCP connection."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public connect(Ljava/nio/channels/Selector;Ljava/net/SocketAddress;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/spi/SelectorProvider;->openSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v2, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, p1, v3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;

    invoke-virtual {p1, p0}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "kryonet"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Port "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/TCP connected to: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->j:J

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->k:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->close()V

    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to connect to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p3
.end method

.method public isTimedOut(J)Z
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->f:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->k:J

    sub-long/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->f:I

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

.method public needsKeepAlive(J)Z
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->b:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->j:J

    sub-long/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->b:I

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

.method public readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    const-string v1, "Connection is closed."

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-interface {v2}, Lcom/esotericsoftware/kryonet/Serialization;->getLengthLength()I

    move-result v2

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-ge v5, v2, :cond_1

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    iget-object v6, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-eq v5, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->k:J

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-ge v5, v2, :cond_1

    return-object v3

    :cond_0
    new-instance p1, Ljava/net/SocketException;

    invoke-direct {p1, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v5}, Lcom/esotericsoftware/kryonet/Serialization;->readLength(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    if-lez v2, :cond_3

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    if-gt v2, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read object larger than read buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid object length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-ge v5, v2, :cond_6

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-eq v0, v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->k:J

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v2, :cond_6

    return-object v3

    :cond_5
    new-instance p1, Ljava/net/SocketException;

    invoke-direct {p1, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->l:I

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    add-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-interface {v3, p1, v5}, Lcom/esotericsoftware/kryonet/Serialization;->read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne v1, v2, :cond_7

    return-object p1

    :cond_7
    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect number of bytes ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining) used to deserialize object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    const-string v1, "Error during deserialization."

    invoke-direct {v0, v1, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/net/SocketException;

    invoke-direct {p1, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)I
    .locals 5

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    invoke-interface {v2}, Lcom/esotericsoftware/kryonet/Serialization;->getLengthLength()I

    move-result v2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-interface {v3, p1, v4, p2}, Lcom/esotericsoftware/kryonet/Serialization;->write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->h:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    sub-int v2, p2, v2

    sub-int/2addr v2, v1

    invoke-interface {v3, v4, v2}, Lcom/esotericsoftware/kryonet/Serialization;->writeLength(Ljava/nio/ByteBuffer;I)V

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :goto_0
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f400000    # 0.75f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    const-string v3, "kryonet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " TCP write buffer is approaching capacity: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    const-string v3, "kryonet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " TCP write buffer utilization: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->j:J

    sub-int/2addr p2, v1

    monitor-exit v0

    return p2

    :catch_0
    move-exception p1

    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error serializing object of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "Connection is closed."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeOperation()V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->i:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/esotericsoftware/kryonet/TcpConnection;->j:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
