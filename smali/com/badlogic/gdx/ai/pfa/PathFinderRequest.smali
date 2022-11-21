.class public Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;
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
.field public static final SEARCH_DONE:I = 0x2

.field public static final SEARCH_FINALIZED:I = 0x3

.field public static final SEARCH_INITIALIZED:I = 0x1

.field public static final SEARCH_NEW:I


# instance fields
.field public client:Lcom/badlogic/gdx/ai/msg/Telegraph;

.field public dispatcher:Lcom/badlogic/gdx/ai/msg/MessageDispatcher;

.field public endNode:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public executionFrames:I

.field public heuristic:Lcom/badlogic/gdx/ai/pfa/Heuristic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;"
        }
    .end annotation
.end field

.field public pathFound:Z

.field public responseMessageCode:I

.field public resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "TN;>;"
        }
    .end annotation
.end field

.field public startNode:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public status:I

.field public statusChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "TN;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/badlogic/gdx/ai/msg/MessageManager;->getInstance()Lcom/badlogic/gdx/ai/msg/MessageManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;Lcom/badlogic/gdx/ai/msg/MessageDispatcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;Lcom/badlogic/gdx/ai/msg/MessageDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/msg/MessageDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iput-object p3, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->heuristic:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    iput-object p4, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;

    iput-object p5, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->dispatcher:Lcom/badlogic/gdx/ai/msg/MessageDispatcher;

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->executionFrames:I

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    return-void
.end method


# virtual methods
.method public changeStatus(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    return-void
.end method

.method public finalizeSearch(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public initializeSearch(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public search(Lcom/badlogic/gdx/ai/pfa/PathFinder;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
            "TN;>;J)Z"
        }
    .end annotation

    invoke-interface {p1, p0, p2, p3}, Lcom/badlogic/gdx/ai/pfa/PathFinder;->search(Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;J)Z

    move-result p1

    return p1
.end method
