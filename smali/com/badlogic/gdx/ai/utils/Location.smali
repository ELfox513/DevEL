.class public interface abstract Lcom/badlogic/gdx/ai/utils/Location;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract angleToVector(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation
.end method

.method public abstract getOrientation()F
.end method

.method public abstract getPosition()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract newLocation()Lcom/badlogic/gdx/ai/utils/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setOrientation(F)V
.end method

.method public abstract vectorToAngle(Lcom/badlogic/gdx/math/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method
