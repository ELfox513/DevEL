.class public Lcom/badlogic/gdx/net/SocketHints;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public connectTimeout:I

.field public keepAlive:Z

.field public linger:Z

.field public lingerDuration:I

.field public performancePrefBandwidth:I

.field public performancePrefConnectionTime:I

.field public performancePrefLatency:I

.field public receiveBufferSize:I

.field public sendBufferSize:I

.field public socketTimeout:I

.field public tcpNoDelay:Z

.field public trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/badlogic/gdx/net/SocketHints;->connectTimeout:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/net/SocketHints;->performancePrefConnectionTime:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/net/SocketHints;->performancePrefLatency:I

    iput v0, p0, Lcom/badlogic/gdx/net/SocketHints;->performancePrefBandwidth:I

    const/16 v2, 0x14

    iput v2, p0, Lcom/badlogic/gdx/net/SocketHints;->trafficClass:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/net/SocketHints;->keepAlive:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/net/SocketHints;->tcpNoDelay:Z

    const/16 v1, 0x1000

    iput v1, p0, Lcom/badlogic/gdx/net/SocketHints;->sendBufferSize:I

    iput v1, p0, Lcom/badlogic/gdx/net/SocketHints;->receiveBufferSize:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/net/SocketHints;->linger:Z

    iput v0, p0, Lcom/badlogic/gdx/net/SocketHints;->lingerDuration:I

    iput v0, p0, Lcom/badlogic/gdx/net/SocketHints;->socketTimeout:I

    return-void
.end method
