.class public interface abstract Lcom/badlogic/gdx/ai/pfa/SmoothableGraphPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/pfa/GraphPath;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/pfa/GraphPath<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public abstract getNodePosition(I)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public abstract swapNodes(II)V
.end method

.method public abstract truncatePath(I)V
.end method
