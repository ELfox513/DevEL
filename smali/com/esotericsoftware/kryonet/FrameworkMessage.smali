.class public interface abstract Lcom/esotericsoftware/kryonet/FrameworkMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;,
        Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;,
        Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;,
        Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;,
        Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;
    }
.end annotation


# static fields
.field public static final keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryonet/FrameworkMessage;->keepAlive:Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    return-void
.end method
