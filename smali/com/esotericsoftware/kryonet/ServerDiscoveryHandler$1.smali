.class final Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler$1;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public onDiscoverHost(Lcom/esotericsoftware/kryonet/UdpConnection;Ljava/net/InetSocketAddress;Lcom/esotericsoftware/kryonet/Serialization;)Z
    .locals 0

    iget-object p1, p1, Lcom/esotericsoftware/kryonet/UdpConnection;->b:Ljava/nio/channels/DatagramChannel;

    iget-object p3, p0, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler$1;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    const/4 p1, 0x1

    return p1
.end method
