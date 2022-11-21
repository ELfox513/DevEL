.class public Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/PathFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
        "TN;>;"
    }
.end annotation


# static fields
.field public static DEBUG:Z = false


# instance fields
.field public a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph<",
            "TN;>;"
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

.field public c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest<",
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
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;Lcom/badlogic/gdx/ai/pfa/PathFinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    return-void
.end method


# virtual methods
.method public search(Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
            "TN;>;J)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->DEBUG:Z

    const-string v1, "HierarchicalPathFinder"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter interruptible HPF; request.status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/ai/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    new-instance v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    invoke-direct {v0}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    :cond_1
    iget-boolean v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    const-string v4, "-- statusChanged"

    invoke-interface {v0, v1, v4}, Lcom/badlogic/gdx/ai/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget-object v4, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    if-ne v0, v4, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->c:J

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    iput-wide p2, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->d:J

    const-wide/16 p2, 0x64

    iput-wide p2, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->e:J

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->a:Lcom/badlogic/gdx/ai/msg/Telegraph;

    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    iput-object p2, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    iput-object p0, p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iput-object p1, p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iput v2, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    iput-boolean v3, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    iget-object p3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->heuristic:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    iput-object p3, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->heuristic:Lcom/badlogic/gdx/ai/pfa/Heuristic;

    iget-object p3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;

    iput-object p3, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;

    iget-object p3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iput-object p3, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iput-object p1, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iput v2, p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->c:I

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->getLevelCount()I

    move-result p1

    sub-int/2addr p1, v3

    iput p1, p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    :cond_4
    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    iget p2, p1, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    if-ltz p2, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->d:Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequestControl;->execute(Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->c:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;

    iput v2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->executionFrames:I

    iput v2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    iput-boolean v3, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    iget-boolean p1, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    if-nez p1, :cond_4

    return v3

    :cond_6
    sget-boolean p1, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->DEBUG:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p1

    const-string p2, "-- before exit"

    invoke-interface {p1, v1, p2}, Lcom/badlogic/gdx/ai/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v3
.end method

.method public searchConnectionPath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "Lcom/badlogic/gdx/ai/pfa/Connection<",
            "TN;>;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->getLevelCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move-object v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v5, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v5, v2, p1, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v3, v4, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v4, v2, v3, v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v2, p2, v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v2, p1, v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ne v5, v4, :cond_2

    :goto_2
    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->setLevel(I)V

    invoke-interface {p4}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->clear()V

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    invoke-interface {v6, v5, v4, p3, p4}, Lcom/badlogic/gdx/ai/pfa/PathFinder;->searchConnectionPath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    invoke-interface {p4, v2}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/ai/pfa/Connection;

    invoke-interface {v4}, Lcom/badlogic/gdx/ai/pfa/Connection;->getToNode()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_4
    return v0
.end method

.method public searchNodePath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Lcom/badlogic/gdx/ai/pfa/Heuristic<",
            "TN;>;",
            "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
            "TN;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->getLevelCount()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move-object v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v5, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v5, v2, p1, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v3, v4, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v4, v2, v3, v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v2, p2, v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v2, p1, v0}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ne v5, v4, :cond_2

    :goto_2
    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v6, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->setLevel(I)V

    invoke-interface {p4}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->clear()V

    iget-object v6, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->b:Lcom/badlogic/gdx/ai/pfa/PathFinder;

    invoke-interface {v6, v5, v4, p3, p4}, Lcom/badlogic/gdx/ai/pfa/PathFinder;->searchNodePath(Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/ai/pfa/Heuristic;Lcom/badlogic/gdx/ai/pfa/GraphPath;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    invoke-interface {p4, v0}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_4
    return v0
.end method
