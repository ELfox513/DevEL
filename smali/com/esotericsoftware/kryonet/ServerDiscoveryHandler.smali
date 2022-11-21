.class public interface abstract Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler$1;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler$1;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;->DEFAULT:Lcom/esotericsoftware/kryonet/ServerDiscoveryHandler;

    return-void
.end method


# virtual methods
.method public abstract onDiscoverHost(Lcom/esotericsoftware/kryonet/UdpConnection;Ljava/net/InetSocketAddress;Lcom/esotericsoftware/kryonet/Serialization;)Z
.end method
