.class public Lcom/badlogic/gdx/net/NetJavaSocketImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/net/Socket;


# instance fields
.field public a:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Net$Protocol;Ljava/lang/String;ILcom/badlogic/gdx/net/SocketHints;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1}, Ljava/net/Socket;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a(Lcom/badlogic/gdx/net/SocketHints;)V

    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget p4, p4, Lcom/badlogic/gdx/net/SocketHints;->connectTimeout:I

    invoke-virtual {v0, p1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    invoke-virtual {p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error making a socket connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4
.end method

.method public constructor <init>(Ljava/net/Socket;Lcom/badlogic/gdx/net/SocketHints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a(Lcom/badlogic/gdx/net/SocketHints;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/net/SocketHints;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefConnectionTime:I

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefLatency:I

    iget v3, p1, Lcom/badlogic/gdx/net/SocketHints;->performancePrefBandwidth:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->trafficClass:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTrafficClass(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget-boolean v1, p1, Lcom/badlogic/gdx/net/SocketHints;->tcpNoDelay:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget-boolean v1, p1, Lcom/badlogic/gdx/net/SocketHints;->keepAlive:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget v1, p1, Lcom/badlogic/gdx/net/SocketHints;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget-boolean v1, p1, Lcom/badlogic/gdx/net/SocketHints;->linger:Z

    iget v2, p1, Lcom/badlogic/gdx/net/SocketHints;->lingerDuration:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    iget p1, p1, Lcom/badlogic/gdx/net/SocketHints;->socketTimeout:I

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Error setting socket hints."

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error closing socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error getting input stream from socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Error getting output stream from socket."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaSocketImpl;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
