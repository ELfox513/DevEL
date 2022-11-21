.class public Lcom/esotericsoftware/kryonet/Client;
.super Lcom/esotericsoftware/kryonet/Connection;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryonet/EndPoint;


# instance fields
.field public volatile A:Z

.field public volatile B:Z

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/Object;

.field public volatile E:Z

.field public final F:Ljava/lang/Object;

.field public G:Ljava/lang/Thread;

.field public H:I

.field public I:Ljava/net/InetAddress;

.field public J:I

.field public K:I

.field public L:Z

.field public M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

.field public final x:Lcom/esotericsoftware/kryonet/Serialization;

.field public y:Ljava/nio/channels/Selector;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x800

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryonet/Client;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryonet/Client;-><init>(IILcom/esotericsoftware/kryonet/Serialization;)V

    return-void
.end method

.method public constructor <init>(IILcom/esotericsoftware/kryonet/Serialization;)V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Connection;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->C:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->D:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->F:Ljava/lang/Object;

    iput-object p0, p0, Lcom/esotericsoftware/kryonet/Connection;->d:Lcom/esotericsoftware/kryonet/EndPoint;

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/Client;->x:Lcom/esotericsoftware/kryonet/Serialization;

    sget-object v0, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->DEFAULT:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-virtual {p0, p3, p1, p2}, Lcom/esotericsoftware/kryonet/Connection;->a(Lcom/esotericsoftware/kryonet/Serialization;II)V

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;
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
.method public addListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p1, :cond_0

    const-string p1, "kryonet"

    const-string v0, "Client listener added."

    invoke-static {p1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Lcom/esotericsoftware/kryonet/Connection;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->F:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryonet/Client;->L:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/Client;->L:Z

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect(ILjava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public connect(ILjava/lang/String;II)V
    .locals 0

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public connect(ILjava/net/InetAddress;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void
.end method

.method public connect(ILjava/net/InetAddress;II)V
    .locals 9

    if-eqz p2, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->getUpdateThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_8

    iput p1, p0, Lcom/esotericsoftware/kryonet/Client;->H:I

    iput-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->I:Ljava/net/InetAddress;

    iput p3, p0, Lcom/esotericsoftware/kryonet/Client;->J:I

    iput p4, p0, Lcom/esotericsoftware/kryonet/Client;->K:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    if-eq p4, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput v1, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    if-eq p4, v1, :cond_2

    :try_start_0
    new-instance v0, Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->x:Lcom/esotericsoftware/kryonet/Serialization;

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v3, v3, Lcom/esotericsoftware/kryonet/TcpConnection;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/esotericsoftware/kryonet/UdpConnection;-><init>(Lcom/esotericsoftware/kryonet/Serialization;I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->F:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/esotericsoftware/kryonet/Client;->A:Z

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 p3, 0x1388

    invoke-virtual {p1, v5, v6, p3}, Lcom/esotericsoftware/kryonet/TcpConnection;->connect(Ljava/nio/channels/Selector;Ljava/net/SocketAddress;I)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->C:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    :goto_1
    :try_start_3
    iget-boolean p3, p0, Lcom/esotericsoftware/kryonet/Client;->A:Z

    const-wide/16 v5, 0x64

    if-nez p3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long p3, v7, v3

    if-gez p3, :cond_3

    :try_start_4
    iget-object p3, p0, Lcom/esotericsoftware/kryonet/Client;->C:Ljava/lang/Object;

    invoke-virtual {p3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :cond_3
    :try_start_5
    iget-boolean p3, p0, Lcom/esotericsoftware/kryonet/Client;->A:Z

    if-eqz p3, :cond_7

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eq p4, v1, :cond_6

    :try_start_6
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object p3, p0, Lcom/esotericsoftware/kryonet/Client;->F:Ljava/lang/Object;

    monitor-enter p3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iput-boolean v2, p0, Lcom/esotericsoftware/kryonet/Client;->B:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/kryonet/UdpConnection;->connect(Ljava/nio/channels/Selector;Ljava/net/InetSocketAddress;)V

    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object p3, p0, Lcom/esotericsoftware/kryonet/Client;->D:Ljava/lang/Object;

    monitor-enter p3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_1
    :goto_2
    :try_start_9
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->B:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-gez v2, :cond_4

    new-instance v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;-><init>()V

    iget v1, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    iput v1, v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;->connectionID:I

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v1, p0, v0, p1}, Lcom/esotericsoftware/kryonet/UdpConnection;->send(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Ljava/net/SocketAddress;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->D:Ljava/lang/Object;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_b
    iget-boolean p1, p0, Lcom/esotericsoftware/kryonet/Client;->B:Z

    if-eqz p1, :cond_5

    monitor-exit p3

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/net/SocketTimeoutException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected, but timed out during UDP registration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :catchall_1
    move-exception p1

    :try_start_d
    monitor-exit p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :cond_6
    :goto_3
    return-void

    :cond_7
    :try_start_f
    new-instance p2, Ljava/net/SocketTimeoutException;

    const-string p3, "Connected, but timed out during TCP registration.\nNote: Client#update must be called in a separate thread during connect."

    invoke-direct {p2, p3}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    :catchall_3
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    :catch_2
    move-exception p1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot connect on the connection\'s update thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "host cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public discoverHost(II)Ljava/net/InetAddress;
    .locals 4

    const-string v0, "kryonet"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/esotericsoftware/kryonet/Client;->g(ILjava/net/DatagramSocket;)V

    invoke-virtual {v2, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p1}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onRequestNewDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discovered server: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v3

    invoke-interface {p2, p1, v3}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onDiscoveredHost(Ljava/net/DatagramPacket;Lcom/esotericsoftware/kryo/Kryo;)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p2}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onFinally()V

    return-object p1

    :catch_0
    :try_start_4
    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz p1, :cond_1

    const-string p1, "Host discovery timed out."

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p1}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onFinally()V

    return-object v1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v2, v1

    :goto_1
    :try_start_5
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz p2, :cond_3

    const-string p2, "Host discovery failed."

    invoke-static {v0, p2, p1}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_4
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p2}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onFinally()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public discoverHosts(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const-string v0, "kryonet"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/esotericsoftware/kryonet/Client;->g(ILjava/net/DatagramSocket;)V

    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    :goto_0
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p1}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onRequestNewDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovered server: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onDiscoveredHost(Ljava/net/DatagramPacket;Lcom/esotericsoftware/kryo/Kryo;)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz p1, :cond_1

    const-string p1, "Host discovery timed out."

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p1}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onFinally()V

    return-object v1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_2
    :try_start_4
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz p2, :cond_3

    const-string p2, "Host discovery failed."

    invoke-static {v0, p2, p1}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_4
    iget-object p2, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    invoke-interface {p2}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->onFinally()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method public final g(ILjava/net/DatagramSocket;)V
    .locals 8

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->x:Lcom/esotericsoftware/kryonet/Serialization;

    new-instance v2, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;

    invoke-direct {v2}, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Lcom/esotericsoftware/kryonet/Serialization;->write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    :try_start_0
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v5, v2, v1, v7, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {p2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v5, 0x2

    aput-byte v6, v4, v5

    :try_start_1
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v5, v2, v1, v4, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {p2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    :cond_1
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcasted host discovery on port: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "kryonet"

    invoke-static {p2, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->x:Lcom/esotericsoftware/kryonet/Serialization;

    check-cast v0, Lcom/esotericsoftware/kryonet/KryoSerialization;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    return-object v0
.end method

.method public getSerialization()Lcom/esotericsoftware/kryonet/Serialization;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->x:Lcom/esotericsoftware/kryonet/Serialization;

    return-object v0
.end method

.method public getUpdateThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->G:Ljava/lang/Thread;

    return-object v0
.end method

.method public h()V
    .locals 3

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->needsKeepAlive(J)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/Client;->B:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v2, v0, v1}, Lcom/esotericsoftware/kryonet/UdpConnection;->needsKeepAlive(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendUDP(Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method public reconnect()V
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/Client;->H:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->reconnect(I)V

    return-void
.end method

.method public reconnect(I)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->I:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/esotericsoftware/kryonet/Client;->J:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/Client;->K:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/esotericsoftware/kryonet/Client;->connect(ILjava/net/InetAddress;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This client has never been connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeListener(Lcom/esotericsoftware/kryonet/Listener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p1, :cond_0

    const-string p1, "kryonet"

    const-string v0, "Client listener removed."

    invoke-static {p1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v1, "kryonet"

    if-eqz v0, :cond_0

    const-string v0, "Client thread started."

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->E:Z

    :goto_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->E:Z

    if-nez v0, :cond_7

    const/16 v0, 0xfa

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/Client;->update(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/esotericsoftware/kryonet/KryoNetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error updating connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string v2, "Error updating connection."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    throw v0

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const-string v3, "Unable to update connection: "

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    const-string v2, "Unable to update connection."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    goto/16 :goto_0

    :cond_7
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_8

    const-string v0, "Client thread stopped."

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public setDiscoveryHandler(Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->M:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    return-void
.end method

.method public setKeepAliveUDP(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/esotericsoftware/kryonet/UdpConnection;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected via UDP."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->G:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/Client;->E:Z

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->G:Ljava/lang/Thread;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Client"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->G:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->G:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->E:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    const-string v0, "kryonet"

    const-string v1, "Client thread stopping."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/Client;->E:Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public update(I)V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->G:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Client;->F:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/esotericsoftware/kryonet/Client;->z:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/esotericsoftware/kryonet/Client;->z:I

    const/16 v3, 0x64

    if-ne p1, v3, :cond_14

    iput v2, p0, Lcom/esotericsoftware/kryonet/Client;->z:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x19

    cmp-long p1, v2, v0

    if-gez p1, :cond_14

    sub-long/2addr v0, v2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    nop

    goto/16 :goto_5

    :cond_1
    iput v2, p0, Lcom/esotericsoftware/kryonet/Client;->z:I

    iput-boolean v2, p0, Lcom/esotericsoftware/kryonet/Client;->L:Z

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Client;->y:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->h()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v3, :cond_12

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    if-ne v1, v4, :cond_e

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v1, p0}, Lcom/esotericsoftware/kryonet/TcpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->A:Z

    if-nez v4, :cond_7

    instance-of v4, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    iget v1, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;->connectionID:I

    iput v1, p0, Lcom/esotericsoftware/kryonet/Connection;->a:I

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->C:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-boolean v3, p0, Lcom/esotericsoftware/kryonet/Client;->A:Z

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->C:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_5

    const-string v4, "kryonet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " received TCP: RegisterTCP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryonet/Connection;->f(Z)V

    :cond_6
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->b()V
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    :cond_7
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Client;->B:Z

    if-nez v4, :cond_a

    instance-of v1, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Client;->D:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iput-boolean v3, p0, Lcom/esotericsoftware/kryonet/Client;->B:Z

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/Client;->D:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_8

    const-string v4, "kryonet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " received UDP: RegisterUDP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "kryonet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v6, v6, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v6}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/UDP connected to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    iget-object v6, v6, Lcom/esotericsoftware/kryonet/UdpConnection;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryonet/Connection;->f(Z)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->b()V
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2

    :cond_a
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-nez v4, :cond_b

    goto/16 :goto_2

    :cond_b
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v1, Lcom/esotericsoftware/kryonet/FrameworkMessage;

    if-nez v5, :cond_c

    const-string v5, "kryonet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " received TCP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    sget-boolean v5, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v5, :cond_d

    const-string v5, "kryonet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " received TCP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/Connection;->e(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/UdpConnection;->readFromAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->p:Lcom/esotericsoftware/kryonet/UdpConnection;

    invoke-virtual {v1, p0}, Lcom/esotericsoftware/kryonet/UdpConnection;->readObject(Lcom/esotericsoftware/kryonet/Connection;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kryonet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " received UDP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/Connection;->e(Ljava/lang/Object;)V

    :cond_12
    :goto_4
    and-int/lit8 v1, v2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->writeOperation()V
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_1

    :cond_13
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_14
    :goto_5
    iget-boolean p1, p0, Lcom/esotericsoftware/kryonet/Connection;->w:Z

    if-eqz p1, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/Connection;->k:Lcom/esotericsoftware/kryonet/TcpConnection;

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryonet/TcpConnection;->isTimedOut(J)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "kryonet"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " timed out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->close()V

    goto :goto_6

    :cond_16
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Client;->h()V

    :goto_6
    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/Connection;->d()V

    :cond_17
    return-void

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    :catchall_3
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
