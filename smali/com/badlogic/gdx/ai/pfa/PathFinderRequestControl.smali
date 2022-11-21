.class public Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field public a:Lcom/badlogic/gdx/ai/msg/Telegraph;

.field public b:Lcom/badlogic/gdx/ai/pfa/PathFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
            "TN;>;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
            "TN;>;)Z"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->executionFrames:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->executionFrames:I

    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    iget-wide v7, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    sub-long v7, v3, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    iget-wide v7, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->e:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1, v5, v6}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->initializeSearch(J)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->changeStatus(I)V

    iput-wide v3, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    :cond_2
    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    const/4 v3, 0x2

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    iget-wide v8, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    sub-long v8, v4, v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    iget-wide v8, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->e:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    invoke-virtual {p1, v0, v6, v7}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->search(Lcom/badlogic/gdx/ai/pfa/PathFinder;J)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->changeStatus(I)V

    iput-wide v4, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    :cond_5
    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    if-ne v0, v3, :cond_a

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    iget-wide v7, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    sub-long v7, v3, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    iget-wide v7, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->e:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_6

    return v2

    :cond_6
    invoke-virtual {p1, v5, v6}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->finalizeSearch(J)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->changeStatus(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->a:Lcom/badlogic/gdx/ai/msg/Telegraph;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->dispatcher:Lcom/badlogic/gdx/ai/msg/MessageDispatcher;

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/badlogic/gdx/ai/msg/MessageManager;->getInstance()Lcom/badlogic/gdx/ai/msg/MessageManager;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->a:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iget-object v5, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->client:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iget v6, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->responseMessageCode:I

    invoke-virtual {v0, v2, v5, v6, p1}, Lcom/badlogic/gdx/ai/msg/MessageDispatcher;->dispatchMessage(Lcom/badlogic/gdx/ai/msg/Telegraph;Lcom/badlogic/gdx/ai/msg/Telegraph;ILjava/lang/Object;)V

    :cond_9
    iput-wide v3, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    iget-boolean v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    return v1
.end method
