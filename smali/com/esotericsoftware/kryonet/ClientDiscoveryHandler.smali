.class public interface abstract Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler$1;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler$1;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;->DEFAULT:Lcom/esotericsoftware/kryonet/ClientDiscoveryHandler;

    return-void
.end method


# virtual methods
.method public abstract onDiscoveredHost(Ljava/net/DatagramPacket;Lcom/esotericsoftware/kryo/Kryo;)V
.end method

.method public abstract onFinally()V
.end method

.method public abstract onRequestNewDatagramPacket()Ljava/net/DatagramPacket;
.end method
