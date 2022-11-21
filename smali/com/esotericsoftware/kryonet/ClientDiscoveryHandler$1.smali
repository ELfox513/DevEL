.class final Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveredHost(Ljava/net/DatagramPacket;Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 0

    return-void
.end method

.method public onFinally()V
    .locals 0

    return-void
.end method

.method public onRequestNewDatagramPacket()Ljava/net/DatagramPacket;
    .locals 3

    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    return-object v0
.end method
