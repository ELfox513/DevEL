.class public interface abstract Lcom/badlogic/gdx/ai/pfa/HierarchicalGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/Graph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/Graph<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public abstract convertNodeBetweenLevels(ILjava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;I)TN;"
        }
    .end annotation
.end method

.method public abstract getLevelCount()I
.end method

.method public abstract setLevel(I)V
.end method
