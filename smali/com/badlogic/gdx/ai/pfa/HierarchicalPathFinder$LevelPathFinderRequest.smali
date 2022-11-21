.class Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;
.super Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LevelPathFinderRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder<",
            "TN;>;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/PathFinderRequest<",
            "TN;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public finalizeSearch(J)Z
    .locals 2

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iget-boolean p2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    iput-boolean p2, p1, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    iget-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->get(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    :cond_0
    sget-boolean p1, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->DEBUG:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LevelPathFinder finalizeSearch; status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HierarchicalPathFinder"

    invoke-interface {p1, v1, v0}, Lcom/badlogic/gdx/ai/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public initializeSearch(J)Z
    .locals 4

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->executionFrames:I

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->pathFound:Z

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->statusChanged:Z

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iget-object p2, p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    invoke-interface {p2, p1, v0, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iget-object p2, p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    iget v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->c:I

    iget-object v1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    invoke-interface {p2, v0, v1, v2}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iget v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {v0, p1, p2, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iget-object v2, v2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    invoke-interface {v0, p1, v2, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iget-object v0, v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iget-object v2, v2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    invoke-interface {v0, p1, v2, v1}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->b:Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;

    iget-object p2, p2, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    :cond_1
    sget-boolean p2, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->DEBUG:Z

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object p2

    const-string v0, "HierarchicalPathFinder"

    const-string v2, "LevelPathFinder initializeSearch"

    invoke-interface {p2, v0, v2}, Lcom/badlogic/gdx/ai/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    iput p2, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->c:I

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->d:I

    iget-object v2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->startNode:Ljava/lang/Object;

    iget-object v3, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->endNode:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-gez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder$LevelPathFinderRequest;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;

    iget-object p1, p1, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->a:Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;->setLevel(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->resultPath:Lcom/badlogic/gdx/ai/pfa/GraphPath;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/pfa/GraphPath;->clear()V

    return v1
.end method

.method public search(Lcom/badlogic/gdx/ai/pfa/PathFinder;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/pfa/PathFinder<",
            "TN;>;J)Z"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/ai/pfa/HierarchicalPathFinder;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/ai/GdxAI;->getLogger()Lcom/badlogic/gdx/ai/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LevelPathFinder search; status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HierarchicalPathFinder"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/ai/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/ai/pfa/PathFinderRequest;->search(Lcom/badlogic/gdx/ai/pfa/PathFinder;J)Z

    move-result p1

    return p1
.end method
