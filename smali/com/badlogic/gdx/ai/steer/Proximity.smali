.class public interface abstract Lcom/badlogic/gdx/ai/steer/Proximity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract findNeighbors(Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Proximity$ProximityCallback<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public abstract getOwner()Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation
.end method
