.class public abstract Lcom/badlogic/gdx/ai/pfa/indexed/IndexedHierarchicalGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph;
.implements Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/indexed/IndexedGraph<",
        "TN;>;",
        "Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedHierarchicalGraph;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedHierarchicalGraph;->b:I

    return-void
.end method


# virtual methods
.method public abstract convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;I)TN;"
        }
    .end annotation
.end method

.method public getLevelCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedHierarchicalGraph;->a:I

    return v0
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedHierarchicalGraph;->b:I

    return-void
.end method
