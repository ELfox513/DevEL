.class public Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/sched/Schedulable;
.implements Lcom/badlogic/gdx/ai/msg/Telegraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/sched/Schedulable;",
        "Lcom/badlogic/gdx/ai/msg/Telegraph;"
    }
.end annotation


# static fields
.field public static final TIME_TOLERANCE:J = 0x64L


# instance fields
.field public a:Lcom/badlogic/gdx/ai/utils/CircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/utils/CircularBuffer<",
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/ai/pfa/PathFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
            "TN;>;"
        }
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
            "TN;>;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/pfa/PathFinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    new-instance p1, Lcom/badlogic/gdx/ai/utils/CircularBuffer;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->a:Lcom/badlogic/gdx/ai/utils/CircularBuffer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->c:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    new-instance p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    invoke-direct {p1}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/badlogic/gdx/ai/msg/Telegram;)Z
    .locals 2

    iget-object v0, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/msg/Telegram;->sender:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iput-object p1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->client:Lcom/badlogic/gdx/ai/msg/Telegraph;

    const/4 p1, 0x0

    iput p1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    iput p1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->executionFrames:I

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->a:Lcom/badlogic/gdx/ai/utils/CircularBuffer;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->store(Ljava/lang/Object;)Z

    return v1
.end method

.method public run(J)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    iput-wide p1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    const-wide/16 p1, 0x64

    iput-wide p1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->e:J

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    iput-object p1, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    iput-object p0, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->a:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->c:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->a:Lcom/badlogic/gdx/ai/utils/CircularBuffer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->c:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->c:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->execute(Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->a:Lcom/badlogic/gdx/ai/utils/CircularBuffer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->c:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderQueue;->a:Lcom/badlogic/gdx/ai/utils/CircularBuffer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->size()I

    move-result v0

    return v0
.end method
