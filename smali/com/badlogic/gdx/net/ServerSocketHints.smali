.class public Lcom/badlogic/gdx/net/ServerSocketHints;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public acceptTimeout:I

.field public backlog:I

.field public performancePrefBandwidth:I

.field public performancePrefConnectionTime:I

.field public performancePrefLatency:I

.field public receiveBufferSize:I

.field public reuseAddress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->backlog:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefConnectionTime:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefLatency:I

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->performancePrefBandwidth:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->reuseAddress:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->acceptTimeout:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/badlogic/gdx/net/ServerSocketHints;->receiveBufferSize:I

    return-void
.end method
