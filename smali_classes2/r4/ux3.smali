.class public final Lr4/ux3;
.super Lr4/j5;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:Ljava/net/DatagramPacket;

.field public g:Landroid/net/Uri;

.field public h:Ljava/net/DatagramSocket;

.field public i:Ljava/net/MulticastSocket;

.field public j:Ljava/net/InetAddress;

.field public k:Ljava/net/InetSocketAddress;

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lr4/j5;-><init>(Z)V

    const/16 p1, 0x7d0

    new-array v0, p1, [B

    iput-object v0, p0, Lr4/ux3;->e:[B

    new-instance v1, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v1, p0, Lr4/ux3;->f:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lr4/ux3;->m:I

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lr4/ux3;->h:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lr4/ux3;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lr4/ux3;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lr4/ux3;->m:I

    invoke-virtual {p0, v0}, Lr4/j5;->r(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lr4/tx3;

    const/16 p3, 0x7d1

    invoke-direct {p2, p1, p3}, Lr4/tx3;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lr4/tx3;

    const/16 p3, 0x7d2

    invoke-direct {p2, p1, p3}, Lr4/tx3;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/ux3;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lr4/ux3;->m:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v2, p0, Lr4/ux3;->e:[B

    sub-int/2addr v0, v1

    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/ux3;->m:I

    sub-int/2addr p1, p3

    iput p1, p0, Lr4/ux3;->m:I

    return p3
.end method

.method public final g(Lr4/vc;)J
    .locals 3

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    iput-object v0, p0, Lr4/ux3;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr4/ux3;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {p0, p1}, Lr4/j5;->n(Lr4/vc;)V

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lr4/ux3;->j:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lr4/ux3;->j:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lr4/ux3;->k:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lr4/ux3;->j:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lr4/ux3;->k:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lr4/ux3;->i:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lr4/ux3;->j:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lr4/ux3;->i:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lr4/ux3;->h:Ljava/net/DatagramSocket;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lr4/ux3;->k:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lr4/ux3;->h:Ljava/net/DatagramSocket;

    :goto_0
    iget-object v0, p0, Lr4/ux3;->h:Ljava/net/DatagramSocket;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/ux3;->l:Z

    invoke-virtual {p0, p1}, Lr4/j5;->o(Lr4/vc;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lr4/tx3;

    const/16 v1, 0x7d1

    invoke-direct {v0, p1, v1}, Lr4/tx3;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lr4/tx3;

    const/16 v1, 0x7d6

    invoke-direct {v0, p1, v1}, Lr4/tx3;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/ux3;->g:Landroid/net/Uri;

    iget-object v1, p0, Lr4/ux3;->i:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lr4/ux3;->j:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lr4/ux3;->i:Ljava/net/MulticastSocket;

    :cond_0
    iget-object v1, p0, Lr4/ux3;->h:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v0, p0, Lr4/ux3;->h:Ljava/net/DatagramSocket;

    :cond_1
    iput-object v0, p0, Lr4/ux3;->j:Ljava/net/InetAddress;

    iput-object v0, p0, Lr4/ux3;->k:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    iput v0, p0, Lr4/ux3;->m:I

    iget-boolean v1, p0, Lr4/ux3;->l:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lr4/ux3;->l:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_2
    return-void
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/ux3;->g:Landroid/net/Uri;

    return-object v0
.end method
